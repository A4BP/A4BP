getset
lstOfXSDTagClass
	|lstItems|
	lstItems := Dictionary new.

	self fillItems: lstItems tag: 'schema' class: BPXSDSchema.
	self fillItems: lstItems tag: 'import' class: BPXSDImport.
	self fillItems: lstItems tag: 'sequence' class: BPXSDSequence.
	self fillItems: lstItems tag: 'element' class: BPXSDElement.	
	self fillItems: lstItems tag: 'complexType' class: BPXSDComplexType.
	self fillItems: lstItems tag: 'include' class: BPXSDInclude.
	
	
	"second model option xsd:<tag>"
	self copyList:lstItems with:'xsd:'.

	^ lstItems
	
