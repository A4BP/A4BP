getset
stType
 	'' = simpleType ifFalse:[
		^ simpleType.		
	].
	'' = messageType ifFalse:[
		^ messageType.
	].
	'' = elementType ifFalse:[
		^ elementType.
	].
	"by default a very simple example of type"
	^ 'xsd:String'.