private
xmlWriterClassOrNil
	^ Smalltalk
		at: #XMLWriter
		ifAbsent: [nil]