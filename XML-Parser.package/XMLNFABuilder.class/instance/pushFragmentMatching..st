accessing
pushFragmentMatching: aMatcher
	^ self pushFragment:
		(XMLNFAFragment firstState:
			(XMLNFAMatchingState matcher: aMatcher))