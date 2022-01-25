tokenizing
nextXMLStandaloneAttribute
	"always optional"
	(streamReader peek == $s)
		ifTrue: [
			^ self
				nextXMLAttributeName: 'standalone';
				nextXMLAttributeEqualsSeparator;
				nextXMLStandaloneAttributeValue]
		ifFalse: [^ '']