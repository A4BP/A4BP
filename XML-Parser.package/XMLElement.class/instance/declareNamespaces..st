namespacing
declareNamespaces: aDictionaryOrArray
	aDictionaryOrArray associationsDo: [:each |
		self
			declarePrefix: each key
			uri: each value]