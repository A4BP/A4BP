private
peekForNull
	self peek == 0
		ifTrue: [
			self next.
			^ true]
		ifFalse: [^ false]