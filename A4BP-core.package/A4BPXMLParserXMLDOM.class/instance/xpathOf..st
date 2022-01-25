actions
xpathOf: aDoc
	aDoc parent ifNil: [ ^ '' ].
	^ (self xpathOf: aDoc parent) , '/' , aDoc name