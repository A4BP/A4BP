private
declareNamespaces: aDictionary inScope: aScope
	aScope mapPrefixesAndURIs: aDictionary.
	aDictionary keysAndValuesDo: [:prefix :uri |
		self saxHandler startPrefixMapping: prefix uri: uri].