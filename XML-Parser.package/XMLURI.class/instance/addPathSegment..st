private
addPathSegment: aSegment
	aSegment = '.'
		ifTrue: [^ self addDotPathSegment].
	aSegment = '..'
		ifTrue: [^ self addDoubleDotPathSegment].

	self hasPath
		ifTrue: [
			(self hasDirectoryPath
				and: [pathSegments size > 1])
				ifTrue: [pathSegments removeLast]]
		ifFalse: [
			self hasHost
				ifTrue: [pathSegments addLast: '']].

	pathSegments addLast: aSegment.