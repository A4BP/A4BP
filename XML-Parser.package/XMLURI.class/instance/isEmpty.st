testing
isEmpty
	^ (self hasScheme
		or: [self hasAuthority
			or: [self hasPath
				or: [self hasQueryString
					or: [self hasFragment]]]]) not