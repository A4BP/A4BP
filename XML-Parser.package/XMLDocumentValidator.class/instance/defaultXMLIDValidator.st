private
defaultXMLIDValidator
	"used to validate xml:id attributes in the absence of DTD or other validators"
	^ defaultXMLIDValidator
		ifNil: [
			defaultXMLIDValidator :=
				XMLXMLIDIDAttributeValidator
					element: ''
					attribute: 'xml:id'
					defaultValueValidator:
						(XMLImpliedValueAttributeValidator attribute: 'xml:id').
			defaultXMLIDValidator
				elementIDValidator: XMLElementIDValidator new;
				yourself]