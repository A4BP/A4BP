class initialization
initializeByteOrderMarks
	UTF8BOM := XMLUTF8StreamDecoder byteOrderMark.
	UTF16BigEndianBOM := XMLUTF16BigEndianStreamDecoder byteOrderMark.
	UTF16LittleEndianBOM := XMLUTF16LittleEndianStreamDecoder byteOrderMark.
	UTF32BigEndianBOM := XMLUTF32BigEndianStreamDecoder byteOrderMark.
	UTF32LittleEndianBOM := XMLUTF32LittleEndianStreamDecoder byteOrderMark.