accessing
headerKeys
	| keys |

	keys := OrderedCollection new.
	self headerKeysDo: [:key |
		keys addLast: key].
	^ keys.