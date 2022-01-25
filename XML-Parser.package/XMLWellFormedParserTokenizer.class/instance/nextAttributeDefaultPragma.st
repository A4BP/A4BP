tokenizing - dtd
nextAttributeDefaultPragma
	self nextSeparatorsInDeclaration.
	streamReader peek == $#
		ifFalse: [^ ''].
	streamReader next.

	streamReader peek == $R
		ifTrue: [^ self expectNextAll: 'REQUIRED'].
	streamReader peek == $I
		ifTrue: [^ self expectNextAll: 'IMPLIED'].
	^ self expectNextAll: 'FIXED'.