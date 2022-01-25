test-get
testgetSimple
	| res v|
	res := client
		get: '/';
		response.
	v := res contents trim.
	self assert: v equals: '"a4bp"'