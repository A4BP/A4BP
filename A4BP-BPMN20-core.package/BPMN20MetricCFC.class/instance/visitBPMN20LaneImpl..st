as yet unclassified
visitBPMN20LaneImpl: aModel
	|metric|
	metric := 0.
	aModel flowNodeRefs do:[ :n | metric := metric + ( n accept: self )  ].
	^ metric