printing
printOn: aStream
	self
		printSchemeOn: aStream;
		printAuthorityOn: aStream;
		printPathSegmentsOn: aStream unescaped: false;
		printQueryStringOn: aStream;
		printFragmentOn: aStream
		