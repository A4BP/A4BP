private
afterAddingLast: anAttribute
	self attributesByName
		at: anAttribute name
		ifPresent: [:oldAttribute |
			self
				replacedAttribute: oldAttribute
				withAttributeAt: self size];
		at: anAttribute name
		put: anAttribute.
	observer ifNotNil: [observer addedAttribute: anAttribute].