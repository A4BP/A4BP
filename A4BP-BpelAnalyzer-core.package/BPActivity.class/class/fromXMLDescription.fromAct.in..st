parser
fromXMLDescription:document fromAct:bpAct in:aBPObject
	"an secuence activity have a list of activities"
	self fillBData: document in: bpAct.
	self fillElementsIn: bpAct from: document.
	^ bpAct