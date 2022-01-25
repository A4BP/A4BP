tokenizing - dtd
nextSeparatorsInDeclaration
	"this can be used to replace entity references within declarations"

	[streamReader peek == $%]
		whileTrue: [
			streamReader next.
			self nextParameterEntityReferenceInDeclaration].
	self nextSeparators.
	[streamReader peek == $%]
		whileTrue: [
			streamReader next.
			self nextParameterEntityReferenceInDeclaration.
			streamReader skipSeparators].