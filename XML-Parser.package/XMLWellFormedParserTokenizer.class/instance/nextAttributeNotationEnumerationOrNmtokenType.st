tokenizing - dtd
nextAttributeNotationEnumerationOrNmtokenType
	streamReader next.
	streamReader peek == $O
		ifTrue: [
			self expectNextAll: 'OTATION'.
			^ self nextAttributeNotationEnumerationType].
	self expectNextAll: 'MTOKEN'.
	streamReader peek == $S
		ifTrue: [
			streamReader next.
			^ 'NMTOKENS'].
	^ 'NMTOKEN'.