initialization
initialize
	super initialize.

	"always used, so explicitly initialized"
	nodeFactory := XMLNodeFactory new.
	preservesCDataNodes := false.
	preservesCommentNodes := false.
	preservesIgnorableWhitespace := false.