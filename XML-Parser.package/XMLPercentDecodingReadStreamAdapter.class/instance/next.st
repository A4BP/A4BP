accessing
next
	| byte |

	(stream atEnd not
		and: [stream peek == $%])
		ifTrue: [
			stream next.
			byte :=
				(XMLSmallIntegerReader
					readFrom: stream
					withBase: 16
					upToLimit: 2)
						ifNil: [37] "$% asciiValue"].
	^ byte.