initialization
initialize
	super initialize.
	processName := 'Unnamed'.
	aName := processName.
	activities := OrderedCollection new.
	variables := BPVariables new.
	partnerLinks := BPPartnerLinks new.	
	"lstRelations := IdentityDictionary new."
	faultHandlers := BPFaultHandlers new.
	bpRelations := BPRelationsElementsInBPObject new.
	bpRelationsProcessInstrumented := BPRelationsElementsInBPObject new.
	bpRelationsProcessInstrumented aName: A4BPUII18n msg msgInstrumentations.
	nsNameSpaces := Dictionary new.
	fileName := ''.
	myProcess := self.
	self parent: self