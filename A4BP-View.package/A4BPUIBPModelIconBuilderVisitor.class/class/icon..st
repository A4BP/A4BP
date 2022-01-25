as yet unclassified
icon: aModel
	aModel ifNotNil: [ ^ aModel accept: self instance ].
	^ A4BPEmptyObj instance accept: self instance