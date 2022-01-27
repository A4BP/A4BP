accessing
nodes
	"returns the internal node list; safe to modify, but adding/removing will
	have the affect of adding/removing from the receiver"
	^ nodes ifNil: [nodes := self nodeListClass observer: self]