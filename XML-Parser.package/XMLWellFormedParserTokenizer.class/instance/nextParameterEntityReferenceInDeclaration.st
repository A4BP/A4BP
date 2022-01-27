tokenizing - dtd
nextParameterEntityReferenceInDeclaration
	| name |

	name := self nextName.
	context isInternalSubsetContext
		ifTrue: [self errorInternalDeclarationParameterEntityReference: name].
	self expectNext: $;.
	(driver handleParameterEntityReference: name)
		ifNotNil: [:entity | entity constructReplacementOn: self].