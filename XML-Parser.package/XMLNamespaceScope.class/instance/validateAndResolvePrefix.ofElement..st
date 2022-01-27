validating
validateAndResolvePrefix: aPrefix ofElement: aName
	aPrefix isEmpty "avoid ifEmpty: closure overhead"
		ifTrue: [
			self validateUnprefixedName: aName.
			^ self defaultNamespace]
		ifFalse: [^ self validateAndResolvePrefix: aPrefix]