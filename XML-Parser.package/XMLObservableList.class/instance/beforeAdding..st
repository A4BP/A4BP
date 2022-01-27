private
beforeAdding: anObject
	observer ifNotNil: [observer adding: anObject to: self]