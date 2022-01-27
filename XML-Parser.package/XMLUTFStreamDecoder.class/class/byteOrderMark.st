accessing
byteOrderMark
	"avoid asString for portability"
	^ String withAll: (self byteOrderMarkBytes collect: [:each | each asCharacter])