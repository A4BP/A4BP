metrics-complexity
metricCFC
	"
	[
		Jorge Cardoso
		Department of Mathematics and Engineering, University of Madeira,
		9050-390 Funchal, Portugal tugal
	]
	"

	"
	this is the old version without visitor pattern
	|metric|
	metric:=0.
	self lstActivities do:[ :act | metric:= metric + act calculateCFC].
	^ metric."

	| metric visitor |
	metric := 0.
	visitor := BPMetricCFC new.
	metric := self accept: visitor.
	^ metric