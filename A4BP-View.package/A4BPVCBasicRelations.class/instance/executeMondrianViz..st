visualization
executeMondrianViz: mondrian
	| cv p|
	p:= bpObj.
	cv := A4BPUIBVFactory colorVisitor.
	self addInspect: mondrian.
	mondrian shape circle color:[ :n | n accept: cv ];size:[ :n | n size * 10].
	mondrian nodes: p flowElements.
	mondrian shape line.
	mondrian edges connectToAll: [:n|n flows].
	mondrian layout force charge: -150.
	mondrian build.
	