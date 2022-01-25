as yet unclassified
getPathInfo: aModel
	| zfClass jvm ss result xml j_xml|
	jvm := A4BPJVMConfiguration currentJVM.
	zfClass := jvm findClass: #'a4bp.integration.SimulationServer'.
	ss := zfClass new.
	xml := aModel text.
	j_xml := xml asJavaString: jvm.
	result := ss getPathInfo_String:xml.
	^ result asString