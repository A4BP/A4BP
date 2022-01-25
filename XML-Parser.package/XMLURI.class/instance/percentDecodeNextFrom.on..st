private
percentDecodeNextFrom: aReadStream on: aWriteStream
	| readStreamAdapter |

	readStreamAdapter :=
		XMLDecodingReadStreamAdapter
			on: (XMLPercentDecodingReadStreamAdapter on: aReadStream).
	[readStreamAdapter atEnd]
		whileFalse: [aWriteStream nextPut: readStreamAdapter next].