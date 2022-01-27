private
closeCurrentStream
	(stream respondsTo: #close)
		ifTrue: [stream close].
	onClose ifNotNil: [onClose value].