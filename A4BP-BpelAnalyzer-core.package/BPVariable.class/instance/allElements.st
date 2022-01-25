all
allElements
	"list of elements if showDef find null xsdType then start find description"
	|lst|
	lst :=OrderedCollection new.
	"self showDef expect a BPXSDElement"
	lst addAll: self showDef allElements.
	^ lst