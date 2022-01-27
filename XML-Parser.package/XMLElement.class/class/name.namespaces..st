instance creation
name: aQualifiedName namespaces: aNamespaceDictionaryOrArray
	^ self new
		declareNamespaces: aNamespaceDictionaryOrArray;
		name: aQualifiedName