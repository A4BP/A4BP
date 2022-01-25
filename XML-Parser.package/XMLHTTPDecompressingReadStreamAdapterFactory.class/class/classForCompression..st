accessing
classForCompression: aCompressionScheme
	| lowercaseCompressionScheme |

	lowercaseCompressionScheme := aCompressionScheme asLowercase.
	self allSubclassesDo: [:each |
		(each basicCanDecompressCompression: lowercaseCompressionScheme)
			ifTrue: [^ each]].
	^ nil.