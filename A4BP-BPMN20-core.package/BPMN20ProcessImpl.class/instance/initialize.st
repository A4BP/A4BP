initialization
initialize
	super initialize.
	extensionElements := A4BPCollection new.
	laneSets := A4BPCollection new.
	flowElements := A4BPDictionary new.
	variables := A4BPCollection new.
	wsdls := A4BPCollection new.
	fileName := ''