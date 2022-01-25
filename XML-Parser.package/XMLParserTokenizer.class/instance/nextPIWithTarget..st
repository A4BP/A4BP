tokenizing
nextPIWithTarget: aTarget
	streamReader peek == $?
		ifTrue: [
			streamReader next.
			self nextPITerminator.
			driver
				handlePI: aTarget
				data: '']
		ifFalse: [
			self nextSeparators.
			driver
				handlePI: aTarget
				data: self nextPIData].