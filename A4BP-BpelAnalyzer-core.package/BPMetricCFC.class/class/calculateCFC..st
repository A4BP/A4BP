metric
calculateCFC: aModel
	| metric visitor |
	metric := 0.
	visitor := self new.
	metric := aModel accept: visitor.
	^ metric