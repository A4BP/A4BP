accessing
currentScope
	^ self scopes lastOrNil ifNil: [self emptyScope]