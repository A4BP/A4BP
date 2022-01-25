accessing
nextPutAll: aCollection
	"can't use #to:do: here because other #nextPutAll: implementations
	support non-sequenceable collection arguments wtih #do:"
	aCollection do: [:each |
		self nextPut: each].
	^ aCollection.