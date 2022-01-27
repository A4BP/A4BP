element handling
handleElementsMatchingClass: aClass
	| className |

	(className := self toNameWithoutPrefixAndElementSuffix: aClass name asString)
		ifEmpty: [^ self].

	self
		handleElement: (self toCamelCasedName: className)
		withClass: aClass.
	self
		handleElement: (self toHyphenatedName: className)
		withClass: aClass.