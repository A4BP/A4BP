private
addDoubleDotPathSegment
	self hasPath
		ifFalse: [^ self].

	self hasRootPath
		ifTrue: [pathSegments removeAll]
		ifFalse: [| hadAbsolutePath |
			hadAbsolutePath := self hasAbsolutePath.
			self hasDirectoryPath
				ifTrue: [pathSegments removeLast].
			self hasPath
				ifTrue: [
					pathSegments removeLast.
					(self hasPath
						or: [hadAbsolutePath])
						ifTrue: [self haveDirectoryPath]]].