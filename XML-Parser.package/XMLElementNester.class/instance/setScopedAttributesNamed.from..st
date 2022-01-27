accessing
setScopedAttributesNamed: aNameCollection from: aDictionary
	| attributes |

	aNameCollection do: [:each |
		aDictionary
			at: each
			ifPresent: [:value |
				"used to copy only once if needed"
				(attributes ifNil: [attributes := self copiedScopedAttributes])
					at: each
					put: value]]