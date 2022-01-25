getset
id
	id ifNil:[ id := UUID new asString ].
	^ id