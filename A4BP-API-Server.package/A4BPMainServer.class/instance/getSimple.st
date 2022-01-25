restful-get
getSimple
	|handler|
	handler := [ :request | self buildRes: 'a4bp'].
   self api: '' method: #GET handler: handler.
	self api: '/' method: #GET handler: handler.
    
