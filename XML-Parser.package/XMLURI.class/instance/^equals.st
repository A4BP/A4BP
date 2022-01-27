comparing
= anObject
	self == anObject
		ifTrue: [^ true].

	self class == anObject class
		ifFalse: [^ false].

	^ scheme = anObject scheme
		and: [hasAuthorityPrefix = anObject hasAuthorityPrefix
			and: [userInfo = anObject userInfo
				and: [host = anObject host
					and: [port = anObject port
						and: [pathSegments = anObject pathSegments
							and: [queryString = anObject queryString
								and: [fragment = anObject fragment]]]]]]].