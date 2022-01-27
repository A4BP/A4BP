private
popNestedStreamWhileAtEnd
	nestedStreams ifNotNil: [
		[stream atEnd
			and: [nestedStreams notEmpty]]
			whileTrue: [self popNestedStream]]