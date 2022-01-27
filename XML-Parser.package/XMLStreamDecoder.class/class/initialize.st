class initialization
initialize
	"self initialize"

	StreamDecoderCache := XMLKeyValueCache maxSize: 128.
	(PreferredStreamDecoders := IdentitySet new)
		addAll: XMLUTFStreamDecoder allSubclasses;
		add: XMLByteStreamDecoder.