comparing
hash
	^ self species hash bitXor:
		(self mainType hash bitXor:
			(self subType hash bitXor:
				"OrderedCollection>>#hash depends on order (and even if it
				didn't, assuming it wouldn't in the future is too risky),
				so instead the size is hashed"
				self parameters size hash))