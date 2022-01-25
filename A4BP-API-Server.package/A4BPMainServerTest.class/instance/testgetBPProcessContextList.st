test-get
testgetBPProcessContextList
	| res v|
	res := client
		get: '/ctx';
		response.
	v := res contents trim.
	self assert: v equals: '"a4bp"'