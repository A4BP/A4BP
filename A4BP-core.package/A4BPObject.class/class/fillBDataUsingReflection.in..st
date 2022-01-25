doForAllChield
fillBDataUsingReflection: document in: obj
	obj localName: document localName.
	self
		instanceVariableNamesDo: [ :v | 
			| value |
			value := self readStringOrEmpty: document at: v asString.
			value = '' ifFalse: [ 				
				obj setUsingReflection: v obj: value ] ].
	^ obj 