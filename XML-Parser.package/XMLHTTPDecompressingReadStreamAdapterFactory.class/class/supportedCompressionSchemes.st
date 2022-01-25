accessing
supportedCompressionSchemes
	| supportedCompressionSchemes |

	supportedCompressionSchemes := OrderedCollection new.
	self allSubclassesDo: [:each |
		each isSupportedImplementation
			ifTrue: [supportedCompressionSchemes addLast: each compressionScheme]].
	^ supportedCompressionSchemes.