tokenizing - dtd
nextStartIncludeSection
	self expectNextAll: 'NCLUDE'.
	streamReader skipSeparators.
	self expectNext: $[.
	totalOpenIncludeSections := self totalOpenIncludeSections + 1.