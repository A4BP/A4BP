private
isMaxSizeException: anException
	^ anException isKindOf: (Smalltalk at: #ZnEntityTooLarge)