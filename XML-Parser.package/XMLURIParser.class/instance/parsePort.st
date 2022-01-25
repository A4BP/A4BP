parsing
parsePort
	| port |

	(readStream peekFor: $:)
		ifTrue: [
			"do not limit the number of chars read, because port
			number literals can have an arbitrary number of
			leading zeros"
			port :=
				XMLSmallIntegerReader
					readFrom: readStream
					withBase: 10.
			[readStream atEnd
				or: [PathDelimiters includes: readStream peek]]
				whileFalse: [readStream next]].
	^ port.