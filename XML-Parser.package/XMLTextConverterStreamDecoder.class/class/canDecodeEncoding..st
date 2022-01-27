testing
canDecodeEncoding: anEncoding
	^ (Smalltalk includesKey: #TextConverter)
		and: [(self textConverterForEncoding: anEncoding) notNil]