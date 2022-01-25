removing
removeHeaderAt: aKey ifAbsent: aBlock
	| removedValues |

	removedValues :=
		self webClientRequest
			headersAt: aKey
			ifAbsent: [^ aBlock value].
	self webClientRequest removeHeader: aKey.
	^ removedValues asOrderedCollection.