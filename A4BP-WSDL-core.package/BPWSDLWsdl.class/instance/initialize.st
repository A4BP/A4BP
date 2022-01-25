initialization
initialize
	super initialize.
	bpRelations  := BPRelationsElementsInBPObject new.
	callRelations := BPRelationsElementsInBPObject new.
	implementRelations := BPRelationsElementsInBPObject new.
	nsNameSpaces := Dictionary new.
	fileName:=''.
	myWSDL:= self.