private
beforeAdding: anAttribute
	observer ifNotNil: [observer addingAttribute: anAttribute]