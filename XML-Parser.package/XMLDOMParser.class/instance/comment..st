handling - lexical
comment: aString
	self preservesCommentNodes
		ifTrue: [self topNodeAdd: (self nodeFactory newComment: aString)]