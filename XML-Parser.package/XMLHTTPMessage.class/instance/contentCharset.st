accessing
contentCharset
	| contentType charset |

	^ ((contentType := self contentType) isNil
		or: [(charset := contentType charset) isEmpty])
		ifTrue: [self defaultContentCharset]
		ifFalse: [charset]