accessing
byteOrderMark
	"avoid #asString and #newFrom: for GS portability"
	^ String streamContents: [:stream |
		self byteOrderMarkBytes do: [:each |
			stream nextPut: each asCharacter]]