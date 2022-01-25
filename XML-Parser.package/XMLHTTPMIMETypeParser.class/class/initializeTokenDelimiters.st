class initialization
initializeTokenDelimiters
	"String streamContents: [:writeStream | | readStream current previous |
		readStream := self tspecialsTemplate readStream.
		[readStream atEnd]
			whileFalse: [
				previous := current.
				current := readStream next.
				(#('""' '<>') anySatisfy: [:each |
					previous = each first
						and: [readStream peek = each last]])
					ifTrue: [writeStream nextPut: current]]]"

	TokenDelimiters :=
		BitmapCharacterSet newFrom: '()<>@,;:\"/[]?.=', Character xmlWhitespace