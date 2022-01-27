accessing
prefix: aPrefix
	self renameWith: [name := self localName qualifyWithPrefix:  aPrefix]