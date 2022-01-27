private
indexOf: anObject otherThan: anIndex
	"used by subclasses to remove duplicates"
	1 to: anIndex - 1 do: [:i |
		(collection at: i) = anObject
			ifTrue: [^ i]].
	anIndex + 1 to: collection size do: [:i |
		(collection at: i) = anObject
			ifTrue: [^ i]].
	^ 0.