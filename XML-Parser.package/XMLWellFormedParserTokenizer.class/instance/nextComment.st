tokenizing
nextComment
	| nextChar |

	"Skip first -"
	streamReader next.
	(nextChar := streamReader next) == $-
		ifFalse: [self errorExpectedCommentStartButGot: nextChar].

	"xml comments can't have '--' in them; any '--' must be followed
	by the terminating '>'"
	characterStream reset.
	[(nextChar := streamReader next) == nil
		or: [nextChar == $-
			and: [streamReader peek == $-]]]
		whileFalse: [
			nextChar isXMLChar
				ifFalse: [self errorNonCharInComment: nextChar].
			characterStream nextPut: nextChar].
	nextChar
		ifNil: [self errorExpectedCommentTerminator]
		ifNotNil: [
			streamReader next. "skip second $-"
			(nextChar := streamReader next) == $>
				ifFalse: [self errorExpectedCommentTerminatorButGot: nextChar]].

	driver handleComment: characterStream contents.