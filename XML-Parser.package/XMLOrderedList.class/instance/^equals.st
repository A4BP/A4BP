comparing
= aCollection
	self == aCollection
		ifTrue: [^ true].

	(self species == aCollection species
		and: [self size = aCollection size])
		ifFalse: [^ false].

	"to:do: used for speed"
	1 to: self size do: [:i |
		(self at: i) = (aCollection at: i)
			ifFalse: [^ false]].
	^ true.