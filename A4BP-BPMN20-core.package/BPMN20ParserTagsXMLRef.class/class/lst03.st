getset
lst03
	|lstItems|
	lstItems := Dictionary new.
	
	self fillItems: lstItems tag: 'incoming' class: BPMN20IncomingImpl .
	self fillItems: lstItems tag: 'outgoing' class: BPMN20OutgoingImpl.
	self fillItems: lstItems tag: 'flowNodeRef' class: BPMN20FlowNodeRefImpl.
	
	
	self fillItems: lstItems tag: 'BPMNDiagram' class: BPMN20BPMNDiagramImpl.
	self fillItems: lstItems tag: 'BPMNPlane' class: BPMN20BPMNPlaneImpl.
	self fillItems: lstItems tag: 'BPMNShape' class: BPMN20BPMNShapeImpl.
	self fillItems: lstItems tag: 'BPMNLabel' class: BPMN20BPMNLabelImpl.
	self fillItems: lstItems tag: 'BPMNEdge' class: BPMN20BPMNEdgeImpl.
	self fillItems: lstItems tag: 'BPMNLabelStyle' class: BPMN20BPMNLabelStyleImpl.
	self fillItems: lstItems tag: 'BpmnDiFactory' class: BPMN20BpmnDiFactoryImpl.
	self fillItems: lstItems tag: 'BpmnDiPackage' class: BPMN20BpmnDiPackageImpl.
	self fillItems: lstItems tag: 'Bounds' class: BPMN20BoundsImpl.
	

	^ lstItems 
	