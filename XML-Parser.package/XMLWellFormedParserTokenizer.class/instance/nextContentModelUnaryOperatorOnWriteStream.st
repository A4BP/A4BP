tokenizing - dtd
nextContentModelUnaryOperatorOnWriteStream
	| nextChar |

	((nextChar := streamReader peek) == $?
		or: [nextChar == $*
			or: [nextChar == $+]])
		ifTrue: [writeStream nextPut: streamReader next]