tokenizing - dtd
nextExternalEntityDeclaration: aName isParameterEntity: aBoolean
	| publicID systemID notation |

	streamReader peek == $P
		ifTrue: [
			publicID := self nextPublicIDInDeclaration.
			self nextSeparatorsInDeclaration.
			systemID := self nextSystemIDLiteralWithoutURIFragment]
		ifFalse: [
			publicID := ''.
			systemID := self nextSystemIDInDeclarationWithoutURIFragment].
	aBoolean
		ifTrue: [
			self
				skipSeparatorsInDeclaration;
				nextDeclarationTerminator.
			driver
				handleParameterEntityDeclaration: aName
				publicID: publicID
				systemID: systemID]
		ifFalse: [
			(streamReader peek == $>
				or: [
					self nextSeparatorsInDeclaration.
					streamReader peek == $>])
				ifTrue: [	
					streamReader next.
					notation := '']
				ifFalse: [
					self
						expectNextAll: 'NDATA';
						nextSeparatorsInDeclaration.
					notation := self nextNotationName.
					self
						skipSeparatorsInDeclaration;
						nextDeclarationTerminator].
			driver
				handleGeneralEntityDeclaration: aName
				publicID: publicID
				systemID: systemID
				ndata: notation].