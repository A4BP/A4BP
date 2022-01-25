adding
addHeader: anAssociation
	self
		headerValuesAt: anAssociation key
		add: anAssociation value.
	^ anAssociation.