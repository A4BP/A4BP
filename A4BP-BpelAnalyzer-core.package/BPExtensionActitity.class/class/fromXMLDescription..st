as yet unclassified
fromXMLDescription: document
	| bpAct |
	bpAct := self new.
	self fromXMLDescription: document fromAct: bpAct.
	^ bpAct