accessing
previousContext
	^ previousContext ifNil: [self externalSubsetContext]