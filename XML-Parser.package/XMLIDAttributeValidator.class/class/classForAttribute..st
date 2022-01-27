private
classForAttribute: anAttribute
	anAttribute = 'xml:id'
		ifTrue: [^ XMLXMLIDIDAttributeValidator]
		ifFalse: [^ XMLIDAttributeValidator]