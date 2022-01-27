tokenizing
nextPITarget
	| target |

	target := self nextName.
	context isXMLDeclarationContext
		ifFalse: [
			target = 'xml'
				ifTrue: [self errorXMLDeclarationNotAtBeginning]].
	target = 'XML'
		ifTrue: [self errorXMLPITargetReserved].

	^ target.