glamour-builder-display
lstOfMetricMessagesFrom: aModel
	| lstMsg messagesNames |
	lstMsg := OrderedCollection new.
	messagesNames := BPUIMetricFindMetricMessageNames findMetrics: aModel class.
	messagesNames do: [ :msg | lstMsg add: (A4BPTblItemReflexion build: aModel message: msg) ].
	^ lstMsg