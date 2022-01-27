accessing
encodingNames
	^ encodingNames ifNil: [
		encodingNames := Set new.
		self basicEncodingNames do: [:each |
			encodingNames
				add: each;
				add: each asLowercase;
				add: each asUppercase].
		encodingNames]