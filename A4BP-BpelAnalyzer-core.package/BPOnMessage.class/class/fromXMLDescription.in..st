parser
fromXMLDescription: document in: parent
	| bpObj |
	bpObj := super fromXMLDescription: document in: parent.
	"3 add the object in the father"
	parent addOnMessage: bpObj.
	^ bpObj