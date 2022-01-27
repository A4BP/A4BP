validating
validateEndTag: aName
	self hasElementValidators
		ifTrue: [
			(self currentElementValidator element = aName)
				ifTrue: [
					self currentElementValidator atEnd
						ifFalse: [self errorMissingContentFor: aName]].
			self elementValidatorStack removeLast]