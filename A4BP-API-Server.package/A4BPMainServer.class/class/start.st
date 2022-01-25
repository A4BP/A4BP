init
start
	mInstance ifNil:[ mInstance := self new. ].
	mInstance config.
	^ mInstance start.