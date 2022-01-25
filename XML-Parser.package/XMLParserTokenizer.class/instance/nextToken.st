tokenizing
nextToken
	streamReader atEnd
		ifTrue: [
			state isInitializedState
				ifTrue: [^ self nextEndDocument]].
	^ state nextTokenFrom: self.