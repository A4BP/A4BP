visitors
visitBPScope: aBPScope
	|metric|
	metric:=1.
	aBPScope lstActivities do:[ :act | metric:= metric + ( act accept:self)].
	^ metric.