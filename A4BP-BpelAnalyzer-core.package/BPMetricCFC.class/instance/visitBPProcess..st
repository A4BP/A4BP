visitors
visitBPProcess: aBPProcess
	"comment stating purpose of message"
	"
	[
		Jorge Cardoso
		Department of Mathematics and Engineering, University of Madeira,
		9050-390 Funchal, Portugal tugal
	]
	"
	|metric|
	metric:=0.
	aBPProcess lstActivities do:[ :act | metric:= metric + ( act accept:self)].
	^ metric.