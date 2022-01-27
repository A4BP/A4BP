private
afterAdding: anAttribute at: anIndex
	self attributesByName
		at: anAttribute name
		ifPresent: [:oldAttribute |
			self
				replacedAttribute: oldAttribute
				withAttributeAt: anIndex];
		at: anAttribute name
		put: anAttribute.
	observer ifNotNil: [observer addedAttribute: anAttribute].