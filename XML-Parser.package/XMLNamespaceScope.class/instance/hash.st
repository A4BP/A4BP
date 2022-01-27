comparing
hash
	| hash |

	hash := self class hash.
	prefixMappings
		ifNotNil: [hash := hash bitXor: prefixMappings hash].
	^ hash.