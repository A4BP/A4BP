private
setupInnerXMLNodesForParser: aParser
	self nodeStack do: [:each |
		each isElement
			ifTrue: [
				self
					startInnerXMLElement: each
					forParser: aParser]].
	aParser context: self topNode innerXMLContext.