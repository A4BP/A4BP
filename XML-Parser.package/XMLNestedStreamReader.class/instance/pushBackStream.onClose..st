positioning
pushBackStream: aStream onClose: aBlock
	nestedStreams
		ifNil: [(nestedStreams := OrderedCollection new: self maxNestedStreams)].
	(nestedStreams size >= self maxNestedStreams)
		ifTrue: [self errorNestingLimitExceeded].

	nestedStreams addLast: stream -> onClose.
	peekChar
		ifNotNil: [
			nestedStreams addLast: (XMLSingleCharacterReadStream on: peekChar) -> nil.
			peekChar := nil].

	self stream: aStream.
	onClose := aBlock.