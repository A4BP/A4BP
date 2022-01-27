accessing
attributeNodes
	^ attributes ifNil: [attributes := self attributeListClass observer: self]