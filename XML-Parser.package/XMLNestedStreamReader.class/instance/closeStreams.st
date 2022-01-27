file open/close
closeStreams
	nestedStreams ifNotNil: [
		[nestedStreams notEmpty]
			whileTrue: [self popNestedStream]].
	self closeCurrentStream.