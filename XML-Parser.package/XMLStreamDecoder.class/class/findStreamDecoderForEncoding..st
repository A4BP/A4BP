private
findStreamDecoderForEncoding: anEncoding
	self preferredStreamDecoders do: [:each |
		(each canDecodeEncoding: anEncoding)
			ifTrue: [^ each]].

	self allSubclassesDo: [:each |
		((self preferredStreamDecoders includes: each) not
			and: [each canDecodeEncoding: anEncoding])
			ifTrue: [^ each]].

	^ nil.