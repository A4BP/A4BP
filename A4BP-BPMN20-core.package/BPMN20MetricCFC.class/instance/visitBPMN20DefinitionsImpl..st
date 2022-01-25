as yet unclassified
visitBPMN20DefinitionsImpl: aModel
	|metric|
	metric := 0.
	aModel process do:[ :n | metric := metric + ( n accept: self )  ].
	^ metric