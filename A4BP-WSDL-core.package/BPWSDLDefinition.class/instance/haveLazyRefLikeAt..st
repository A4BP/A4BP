questions
haveLazyRefLikeAt: aRef
	lstPartnertLinkTypes
		do: [ :plnkType | 
			(plnkType isARefOf: aRef)
				ifTrue: [ ^ true ] ].
	^ false