applying
applyAccepting
	| totalFragments |

	(totalFragments := self totalFragments) > 0
		ifTrue: [
			1 to: totalFragments - 1 do: [:i |
				self applyConcatenation].
			self topFragment connectToState:
				XMLNFAAcceptingState new]
		ifFalse: [
			self pushFragment:
				(XMLNFAFragment firstState: XMLNFAAcceptingState new)]