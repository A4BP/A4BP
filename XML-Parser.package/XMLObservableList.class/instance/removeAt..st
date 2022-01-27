removing
removeAt: anIndex
	| removed |

	removed := collection removeAt: anIndex.
	self afterRemoving: removed.
	^ removed.