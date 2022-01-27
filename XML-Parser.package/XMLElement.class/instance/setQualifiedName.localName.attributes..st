initialization
setQualifiedName: aQualifiedName localName: aLocalName attributes: anAttributeDictionary
	name := aQualifiedName.
	localName := aLocalName.
	anAttributeDictionary isEmpty "avoid ifNotEmpty: closure overhead"
		ifFalse: [
			"The setFrom method is used to avoid revalidating the
			attributes when adding them to the list"
			(attributes := self attributeListClass new: anAttributeDictionary size)
					observer: self;
					setFromDictionary: anAttributeDictionary].