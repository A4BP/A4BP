class initialization
initialize
	"self initialize"

	"stored in class vars for faster access"
	UTF8BOMBytes :=
		XMLUTF8StreamConverter byteOrderMarkBytes.
	UTF16BigEndianBOMBytes :=
		XMLUTF16BigEndianStreamConverter byteOrderMarkBytes.
	UTF32BigEndianBOMBytes :=
		XMLUTF32BigEndianStreamConverter byteOrderMarkBytes.
	UTF32LittleEndianBOMBytes :=
		XMLUTF32LittleEndianStreamConverter byteOrderMarkBytes.