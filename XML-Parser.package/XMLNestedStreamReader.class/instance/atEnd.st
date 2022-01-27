testing
atEnd
	peekChar == nil
		ifFalse: [^ false].
	stream atEnd
		ifFalse: [^ false].

	nestedStreams ifNotNil: [
		nestedStreams do: [:each |
			each key atEnd
				ifFalse: [^ false]]].
	^ true.