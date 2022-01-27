accessing
next
	^ character ifNotNil: [:nextChar |
		character := nil.
		nextChar]