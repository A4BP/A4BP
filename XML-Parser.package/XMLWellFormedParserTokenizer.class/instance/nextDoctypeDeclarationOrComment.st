tokenizing
nextDoctypeDeclarationOrComment
	"skip !"
	streamReader next.
	streamReader peek == $-
		ifTrue: [
			context isXMLDeclarationContext
				ifTrue: [context := context prologContext].
			^ self nextComment].
	context isPostDoctypeDeclarationContext
		ifTrue: [self errorMultipleDoctypeDeclarations].
	self nextDoctypeDeclaration.