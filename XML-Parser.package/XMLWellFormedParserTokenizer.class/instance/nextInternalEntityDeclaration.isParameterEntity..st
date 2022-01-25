tokenizing - dtd
nextInternalEntityDeclaration: aName isParameterEntity: aBoolean
	| value |

	value := self nextEntityValue.
	self
		skipSeparatorsInDeclaration;
		nextDeclarationTerminator.

	aBoolean
		ifTrue: [
			driver
				handleParameterEntityDeclaration: aName
				replacement: value]
		ifFalse: [
			driver
				handleGeneralEntityDeclaration: aName
				replacement: value].