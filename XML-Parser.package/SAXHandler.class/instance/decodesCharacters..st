configuring
decodesCharacters: aBoolean
	"When enabled, encoding detection and character decoding will be attemped if:
		1) the input stream or string is binary/external
		2) it starts with a byte-order mark (BOM) byte sequence
		3) the input is wrapped with an XMLDecodingReadStreamAdapter that has
			a null or implicit stream converter
	(Default.)"

	self configuration decodesCharacters: aBoolean