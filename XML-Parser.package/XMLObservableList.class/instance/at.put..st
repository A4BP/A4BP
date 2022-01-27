accessing
at: anIndex put: anObject
	| oldObject |

	"gemstone behavior"
	anIndex = (self size + 1)
		ifTrue: [^ self addLast: anObject].

	self beforeAdding: anObject.

	oldObject := collection at: anIndex.
	collection at: anIndex put: nil.
	oldObject
		ifNotNil: [self afterRemoving: oldObject].
	
	collection at: anIndex put: anObject.
	self
		afterAdding: anObject
		at: anIndex.
	^ anObject.