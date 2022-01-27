private
handlerForLeadByte: aByte
	aByte = 0
		ifTrue: [^ #detectBigEndianUTF32BOMOrImplicitEncoding].
	aByte = XMLUTF16BigEndianStreamDecoder byteOrderMarkBytes first
		ifTrue: [^ #detectBigEndianUTF16BOM].
	aByte = XMLUTF8StreamDecoder byteOrderMarkBytes first
		ifTrue: [^ #detectUTF8BOM].
	aByte = XMLUTF16LittleEndianStreamDecoder byteOrderMarkBytes first
		ifTrue: [^ #detectLittleEndianUTF16BOMOrUTF32BOM].
	aByte = $< asciiValue
		ifTrue: [^ #detectLittleEndianImplicitEncoding].
	^ nil.