private
attributesByName
	^ attributesByName ifNil: [attributesByName := Dictionary new: self capacity]