detecting
streamConverterForEncoding
	| byte |

	(byte := self next)
		ifNil: [^ nil].

	byte == 0
		ifTrue: [^ self detectBigEndianUTF32BOMOrImplicitEncoding].

	byte < 16r80
		ifTrue: [^ self detectLittleEndianImplicitEncoding].

	"(UTF8BOMBytes at: 1) >= 16r80"
	byte == (UTF8BOMBytes at: 1)
		ifTrue: [^ self detectUTF8BOM].

	"(UTF16BigEndianBOMBytes at: 1) >= 16r80"
	byte == (UTF16BigEndianBOMBytes at: 1)
		ifTrue: [^ self detectBigEndianUTF16BOM].

	"(UTF32LittleEndianBOMBytes at: 1) >= 16r80"
	byte == (UTF32LittleEndianBOMBytes at: 1)
		ifTrue: [^ self detectLittleEndianUTF32Or16BOM].

	self resetStreamToStartPosition.
	^ (self detectsImplicitEncodings
		and: [self isUTF8LeadingByte: byte])
		ifTrue: [XMLImplicitUTF8StreamConverter new]
		ifFalse: [nil].