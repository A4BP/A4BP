initialization
fromString: aString
	| parser  |

	parser := XMLURIParser on: aString.

	scheme := parser parseScheme.
	hasAuthorityPrefix := parser parseAuthorityPrefix.
	(hasAuthorityPrefix
		or: [scheme notEmpty])
		ifTrue: [
			userInfo := parser parseUserInfo.
			host := parser parseHost.
			port := parser parsePort]
		ifFalse: [
			userInfo := ''.
			host := ''].
	self setPathSegmentsFromString: parser parsePath.
	queryString := parser parseQueryString.
	fragment := parser parseFragment.