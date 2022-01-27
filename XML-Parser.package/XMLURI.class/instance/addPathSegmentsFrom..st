private
addPathSegmentsFrom: aURI
	aURI hasPath
		ifFalse: [^ self].

	aURI hasAbsolutePath
		ifTrue: [pathSegments removeAll]
		ifFalse: [
			self hasNonDirectoryPath
				ifTrue: [
					pathSegments removeLast.
					self hasPath
						ifTrue: [self haveDirectoryPath]]].

	aURI pathSegments do: [:each | self addPathSegment: each].