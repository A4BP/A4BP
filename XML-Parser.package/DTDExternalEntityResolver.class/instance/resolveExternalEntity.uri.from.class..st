private
resolveExternalEntity: aName uri: anEntityURI from: aSourceURI class: aClass
	| combinedURI replacement replacementStream |

	combinedURI :=
		self
			combineSourceURI: aSourceURI
			withEntityURI: anEntityURI.

	replacementStream := self resolveEntityURI: combinedURI.
	replacement  := replacementStream contents.
	replacementStream close.

	^ aClass
		name: aName
		replacement: replacement
		uri: combinedURI asString.