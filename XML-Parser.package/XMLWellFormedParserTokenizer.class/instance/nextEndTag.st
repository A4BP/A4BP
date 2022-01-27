tokenizing
nextEndTag
	"Skip /"
	streamReader next.
	driver handleEndTag: self nextName.
	streamReader skipSeparators.
	self expectTerminator.