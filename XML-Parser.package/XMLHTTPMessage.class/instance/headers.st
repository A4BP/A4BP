accessing
headers
	| headers |

	headers := OrderedCollection new.
	self headerKeysAndValuesDo: [:key :value |
		headers addLast: key -> value].
	^ headers.