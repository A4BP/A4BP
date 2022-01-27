validating
validateStartTag: aName
	self currentElementValidator
		ifNotNil: [:currentValidator | currentValidator validateStartTag: aName].

	self elementValidatorStack addLast:
		((self elementValidatorFor: aName)
			ifNil: [
				self
					unvalidatedElement: aName;
					defaultElementValidatorFor: aName]).