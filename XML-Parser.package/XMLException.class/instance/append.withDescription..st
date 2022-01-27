private
append: anObject withDescription: aDescription
	self messageText:
		('{1} ({2} {3})' format:
			(Array "ifNil: for compatibility with older versions of messageText"
				with: (self messageText ifNil: [''])
				with: aDescription
				with: anObject))