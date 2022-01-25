private
encodingNamesFromHeaderValuesAt: aKey put: aStringOrCollection
	aStringOrCollection isEmpty
		ifTrue: [
			self
				removeHeaderAt: aKey
				ifAbsent: []]
		ifFalse: [
			self
				headerAt: aKey
				put:
					(aStringOrCollection isString
						ifTrue: [aStringOrCollection]
						ifFalse: [
							String streamContents: [:stream |
								aStringOrCollection
									do: [:each | stream nextPutAll: each]
									separatedBy: [stream nextPutAll: ', ']]])]