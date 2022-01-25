class initialization
initializeVersionNumChars
	"VersionNum ::= '1.' [0-9]+"

	"assign the fully initialized object with #yourself to avoid
	possible race conditions when reinitialization the class"
	VersionNumChars :=
		BitmapCharacterSet new
			addRangeFrom: $0 to: $9;
			add: $.;
			yourself