parsing
parseQuery
	"parse the query as an OrderedCollection of name=value associations
	to handle multiple values for the same key and different encoded keys
	that later percent/plus decode to the same key"

	| query key value |

	(readStream peekFor: $?)
		ifFalse: [^ OrderedCollection new: 0].

	query := OrderedCollection new.
	[readStream atEnd
		or: [(key := self nextDelimitedByAny: QueryKeyDelimiters) isEmpty
			and: [readStream peek == $#]]]
		whileFalse: [| hasValue |
			(hasValue := readStream peekFor: $=)
				ifTrue: [value := self nextDelimitedByAny: QueryValueDelimiters]
				ifFalse: [value := ''].
			(key notEmpty
				or: [hasValue])
				ifTrue: [query addLast: key -> value].
			readStream peekFor: $&].

	^ query.