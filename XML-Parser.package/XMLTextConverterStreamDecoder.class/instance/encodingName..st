accessing
encodingName: anEncodingName
	super encodingName: anEncodingName.
	self textConverter: (self class textConverterForEncoding: anEncodingName) new.