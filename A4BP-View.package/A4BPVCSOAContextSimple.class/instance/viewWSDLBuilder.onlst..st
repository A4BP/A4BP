view
viewWSDLBuilder: v onlst: nodes
	| cv |
	self addInspect: v.
	cv := A4BPUIBVFactory colorVisitor.
	nodes size < 1
		ifTrue: [ ^ self ].	"start visualization"
	v shape rectangle fillColor: (Color lightGray alpha: 0.1).
	v
		node: 'interfaces'
		forIt: [ 
			v shape rectangle size:10; fillColor: [ :wsdl | wsdl accept: cv ].
			v nodes: nodes ]