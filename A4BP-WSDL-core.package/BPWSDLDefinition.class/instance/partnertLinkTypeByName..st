getset
partnertLinkTypeByName: aPlkName
	|rel|
	[ rel := lstPartnertLinkTypes at: aPlkName ]
		on: KeyNotFound
		do: [ ^ A4BPEmptyObj instance ].
	^ rel