as yet unclassified
build: aMessage model: aModel
	| ct |
	ct := self new.
	ct messageType: aMessage.
	[ ct val: (aModel perform: aMessage) ]
		on: Error
		do: [ ct val: -1 ].
	^ ct