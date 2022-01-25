builder
findElementAndDoRelation: link
	"Use recursive engine to find the element in the grid"

	| e |
	e := self findElementById: link refId.
	e isEmptyObj ifFalse: [ link addMatch: e ]