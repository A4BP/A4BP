*XML-Parser
xmlCopyWithoutWhitespace
	^ self reject: [:each | each isXMLWhitespace]