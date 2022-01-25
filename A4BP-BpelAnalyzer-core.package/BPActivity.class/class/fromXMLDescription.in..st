parser
fromXMLDescription: document in: parent
	| bpAct |
	bpAct := self new.
	bpAct parent: parent.
	self fillBData: document in: bpAct.	
	self fromXMLDescription: document fromAct: bpAct in: parent.
	^ bpAct