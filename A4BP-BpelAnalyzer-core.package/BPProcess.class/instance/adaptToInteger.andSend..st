questions
adaptToInteger: rcvr andSend: selector
	selector = #+
		ifTrue: [ ^ self + rcvr ].
	selector = #-
		ifTrue: [ ^ self - rcvr ].
	^ self integer