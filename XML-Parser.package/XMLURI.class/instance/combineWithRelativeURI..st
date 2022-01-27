private
combineWithRelativeURI: aRelativeURI
	(aRelativeURI hasHost
		or: [aRelativeURI hasPath])
		ifTrue: [
			queryString := ''.
			fragment := ''].
	aRelativeURI hasHost
		ifTrue: [
			host := aRelativeURI host.
			pathSegments removeAll].
	aRelativeURI hasPort
		ifTrue: [port := aRelativeURI port].
	aRelativeURI hasPath
		ifTrue: [self addPathSegmentsFrom: aRelativeURI].
	aRelativeURI hasQueryString
		ifTrue: [queryString := aRelativeURI queryString].
	aRelativeURI hasFragment
		ifTrue: [fragment := aRelativeURI fragment].