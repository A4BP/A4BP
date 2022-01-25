tokenizing - dtd
nextNotationDeclaration
	| name publicID systemID |

	self
		expectNextAll: 'NOTATION';
		nextSeparatorsInDeclaration.

	name := self nextNotationName.
	self nextSeparatorsInDeclaration.
	streamReader peek == $P
		ifTrue: [
			publicID := self nextPublicIDInDeclaration.
			(streamReader peek == $>
				or: [
					self nextSeparatorsInDeclaration.
					streamReader peek == $>])
				ifFalse: [systemID := self nextSystemIDLiteral]]
		ifFalse: [systemID := self nextSystemIDInDeclaration].
	self
		skipSeparatorsInDeclaration;
		nextDeclarationTerminator.

	driver
		handleNotationDeclaration: name
		publicID: (publicID ifNil: [''])
		systemID: (systemID ifNil: ['']).