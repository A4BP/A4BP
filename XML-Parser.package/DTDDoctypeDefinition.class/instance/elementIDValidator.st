private
elementIDValidator
	^ elementIDValidator ifNil: [elementIDValidator := XMLElementIDValidator new]