tokenizing - dtd
nextSubsetMarkupToken
	self expectNext: $<.
	streamReader peek == $?
		ifTrue: [^ self nextPI].

	self expectNext: $!.
	streamReader peek == $-
		ifTrue: [^ self nextComment].

	(streamReader peek == $[)
		ifTrue: [
			(context isExternalSubsetContext
				or: [self hasActiveExternalEntity])
				ifTrue: [^ self nextConditionalSection].
			self errorInternalSubsetConditionalSection].

	self nextSubsetDeclaration.