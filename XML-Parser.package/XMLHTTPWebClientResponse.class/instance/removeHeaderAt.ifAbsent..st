removing
removeHeaderAt: aKey ifAbsent: aBlock
	| removedValues |

	removedValues :=
		self webClientResponse
			headersAt: aKey
			ifAbsent: [^ aBlock value].
	self webClientResponse removeHeader: aKey.
	^ removedValues asOrderedCollection.