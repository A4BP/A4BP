tokenizing - dtd
nextAttributeIDOrIDRefType
	streamReader next.
	self expectNext: $D.
	streamReader peek == $R
		ifFalse: [^ 'ID'].	
	self expectNextAll: 'REF'.
	streamReader peek == $S
		ifTrue: [
			streamReader next.
			^ 'IDREFS'].
	^ 'IDREF'.