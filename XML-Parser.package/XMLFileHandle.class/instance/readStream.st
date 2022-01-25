reading
readStream
	"returns a file read stream with decoding"

	^ (XMLDecodingReadStreamAdapter nonDecodingOn: self rawReadStream)
		detectEncoding