removing
removeHeaderAt: aKey ifAbsent: aBlock
	| removedValues |

	removedValues :=
		self zincResponse headers
			removeKey: aKey
			ifAbsent: [^ aBlock value].
	^ removedValues isString
		ifTrue: [OrderedCollection with: removedValues]
		ifFalse: [removedValues asOrderedCollection].