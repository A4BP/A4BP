tokenizing - dtd
nextDoctypeDeclaration
	| root publicID systemID |

	state := state doctypeDeclarationState.
	self
		expectNextAll: 'DOCTYPE';
		nextSeparators.

	root := self nextElementName.
	(streamReader peek == $[
		or: [streamReader peek == $>])
		ifFalse: [
			self nextSeparators.
			streamReader peek == $P
				ifTrue: [
					publicID := self nextPublicID.
					self nextSeparators.
					systemID := self nextSystemIDLiteral]
				ifFalse: [
					streamReader peek == $S
						ifTrue: [systemID := self nextSystemID]]].
	driver
		handleStartDTD: root
		publicID: (publicID ifNil: [''])
		systemID: (systemID ifNil: ['']).

	streamReader skipSeparators.
	streamReader peek == $[
		ifTrue: [self nextStartInternalSubset]
		ifFalse: [self nextEndDoctypeDeclaration].