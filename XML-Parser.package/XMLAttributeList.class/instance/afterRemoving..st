private
afterRemoving: anAttribute
	self attributesByName removeKey: anAttribute name.
	observer ifNotNil: [observer removedAttribute: anAttribute].