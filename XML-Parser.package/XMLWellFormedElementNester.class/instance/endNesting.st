checking
endNesting
	self hasOpenElements
		ifTrue: [self errorUnterminatedElements]