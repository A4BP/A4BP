getset
lstOfWSDLTagClass
	|lstItems|
	lstItems := Dictionary new.
	
	self fillItems: lstItems tag: 'process' class: BPProcess.	
	self fillItems: lstItems tag: 'definitions' class: BPWSDLDefinition.
	self fillItems: lstItems tag: 'message' class: BPWSDLMessage.
	self fillItems: lstItems tag: 'part' class: BPWSDLPart.	
	self fillItems: lstItems tag: 'types' class: BPWSDLTypes.
	self fillItems: lstItems tag: 'portType' class: BPWSDLPortType.
	self fillItems: lstItems tag: 'schema' class: BPXSDSchema.
	self fillItems: lstItems tag: 'import' class: BPXSDImport.
	
	
	self fillItems: lstItems tag: 'plnk:role' class: BPWSDLPlnkRole.
	self fillItems: lstItems tag: 'plnk:partnerLinkType' class: BPWSDLPlnkType.
	
	self fillItems: lstItems tag: 'role' class: BPWSDLPlnkRole.
	self fillItems: lstItems tag: 'partnerLinkType' class: BPWSDLPlnkType.
	
	
	"wsdl for bpel"	
	self copyList:lstItems with:'wsdl:'.
	"bpws:property
	bpws:propertyAlias"
	^ lstItems
	