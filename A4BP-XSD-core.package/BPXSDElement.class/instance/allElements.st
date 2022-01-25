all
allElements
	| lst |
	lst := OrderedCollection new.
	lst addAll: lstElements.
	lstElements do: [ :el | el fillElementsIn: lst ].
	lst addAll: type allElements.
	^ lst