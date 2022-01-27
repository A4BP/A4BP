tokenizing
nextEndDocument
	context canTerminateDocument
		ifFalse: [self errorDocumentTerminatedPrematurely].
	self hasOpenIncludeSections
		ifTrue: [self errorUnterminatedIncludeSections].
	super nextEndDocument.