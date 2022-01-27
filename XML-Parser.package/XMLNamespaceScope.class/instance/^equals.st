comparing
= anObject
	self == anObject
		ifTrue: [^ true].
	self class == anObject class
		ifFalse: [^ false].

	^ self hasNamespaces
		ifTrue: [anObject hasNamespaces and: [prefixMappings = anObject prefixMappings]]
		ifFalse: [anObject hasNamespaces not].