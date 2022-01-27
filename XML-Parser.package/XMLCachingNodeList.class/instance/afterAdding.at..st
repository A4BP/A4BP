private
afterAdding: aNode at: anIndex
	aNode isElement
		ifTrue: [
			anIndex = self size
				ifTrue: [self cacheElementAddedLast: aNode]
				ifFalse: [
					self
						cacheElement: aNode
						addedAt: anIndex]].
	super
		afterAdding: aNode
		at: anIndex.