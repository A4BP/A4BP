all
allActivities
	| lst |
	lst := OrderedCollection new.
	self process do: [ :p | p activities values do: [ :a | lst add: a ] ].
	^ lst