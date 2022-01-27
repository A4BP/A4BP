instance creation
name: aQualifiedName namespaces: aNamespaceDictionaryOrArray attributes: anAttributeDictionaryOrArray
	^ (self
		name: aQualifiedName
		namespaces: aNamespaceDictionaryOrArray)
			setAttributes: anAttributeDictionaryOrArray