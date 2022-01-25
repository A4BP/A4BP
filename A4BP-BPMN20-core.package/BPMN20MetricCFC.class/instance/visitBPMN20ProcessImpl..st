as yet unclassified
visitBPMN20ProcessImpl: aModel 
	|metric|
	metric := 0.
	aModel flowElements do:[ :n | metric := metric + ( n accept: self )  ].
	^ metric