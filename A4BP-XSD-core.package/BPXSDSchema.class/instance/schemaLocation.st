getset
schemaLocation
	import isEmptyObj ifFalse: [ ^ import schemaLocation ].
	include isEmptyObj ifFalse: [ ^ include schemaLocation ].
	^ ''
	