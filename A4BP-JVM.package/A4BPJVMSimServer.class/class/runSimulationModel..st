as yet unclassified
runSimulationModel: aModel
	| zfClass jvm ss result xml j_xml|
	jvm := A4BPJVMConfiguration instance currentJVM.
	zfClass := jvm findClass: #'a4bp.integration.SimulationServer'.
	ss := zfClass new.
	xml := aModel text.
	j_xml := JavaLangString fromString: xml jvm: jvm.
	result := ss runSimulation_String: j_xml.
	^ result asString