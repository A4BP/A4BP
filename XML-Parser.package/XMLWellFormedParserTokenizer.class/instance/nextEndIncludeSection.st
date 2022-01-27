tokenizing - dtd
nextEndIncludeSection
	self totalOpenIncludeSections > 0
		ifFalse: [self errorUnexpectedEndOfIncludeSection].
	"skip ]"
	streamReader next.
	self
		expectNext: $];
		expectTerminator.
	totalOpenIncludeSections := self totalOpenIncludeSections - 1.