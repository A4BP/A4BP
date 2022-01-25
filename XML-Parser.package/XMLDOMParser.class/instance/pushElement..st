private
pushElement: anElement
	self topNodeAdd: anElement.
	^ self pushNode: anElement.