getset
lst02
	|lstItems|
	lstItems := Dictionary new.
	
	
	self fillItems: lstItems tag: 'dataInput' class: BPMN20DataInputImpl.
	self fillItems: lstItems tag: 'dataOutput' class: BPMN20DataOutputImpl.
	self fillItems: lstItems tag: 'dataStore' class: BPMN20DataStoreImpl.
	self fillItems: lstItems tag: 'property' class: BPMN20PropertyImpl.
	self fillItems: lstItems tag: 'lane' class: BPMN20LaneImpl.
	self fillItems: lstItems tag: 'laneSet' class: BPMN20LaneSetImpl.
	self fillItems: lstItems tag: 'loopCharacteristics' class: BPMN20LoopCharacteristicsImpl.
	self fillItems: lstItems tag: 'multiInstanceLoopCharacteristics' class: BPMN20MultiInstanceLoopCharacteristicsImpl.
	self fillItems: lstItems tag: 'standardLoopCharacteristics' class: BPMN20StandardLoopCharacteristicsImpl.
	self fillItems: lstItems tag: 'messageFlowAssociation' class: BPMN20MessageFlowAssociationImpl.
	self fillItems: lstItems tag: 'messageFlow' class: BPMN20MessageFlowImpl.
	self fillItems: lstItems tag: 'monitoring' class: BPMN20MonitoringImpl.
	self fillItems: lstItems tag: 'operation' class: BPMN20OperationImpl.
	self fillItems: lstItems tag: 'outputSet' class: BPMN20OutputSetImpl.
	self fillItems: lstItems tag: 'participantAssociation' class: BPMN20ParticipantAssociationImpl.
	self fillItems: lstItems tag: 'participant' class: BPMN20ParticipantImpl.
	self fillItems: lstItems tag: 'participantMultiplicity' class: BPMN20ParticipantMultiplicityImpl.
	self fillItems: lstItems tag: 'refToBeB' class: BPMN20RefToBeBuild.
	self fillItems: lstItems tag: 'incoming' class: BPMN20IncomingImpl.
	self fillItems: lstItems tag: 'outgoing' class: BPMN20OutgoingImpl.
	self fillItems: lstItems tag: 'sourceRef' class: BPMN20SourceRefImpl.
	self fillItems: lstItems tag: 'targetRef' class: BPMN20TargetRefImpl.
	self fillItems: lstItems tag: 'relationship' class: BPMN20RelationshipImpl.
	self fillItems: lstItems tag: 'rendering' class: BPMN20RenderingImpl.
	self fillItems: lstItems tag: 'resourceAssignmentExpression' class: BPMN20ResourceAssignmentExpressionImpl.
	self fillItems: lstItems tag: 'resourceParameterBinding' class: BPMN20ResourceParameterBindingImpl.
	self fillItems: lstItems tag: 'resourceParameter' class: BPMN20ResourceParameterImpl.
	self fillItems: lstItems tag: 'resourceRole' class: BPMN20ResourceRoleImpl.
	self fillItems: lstItems tag: 'performer' class: BPMN20PerformerImpl.
	self fillItems: lstItems tag: 'humanPerformer' class: BPMN20HumanPerformerImpl.
	self fillItems: lstItems tag: 'potentialOwner' class: BPMN20PotentialOwnerImpl.
	self fillItems: lstItems tag: 'rootElement' class: BPMN20RootElementImpl.
	self fillItems: lstItems tag: 'callableElement' class: BPMN20CallableElementImpl.
	self fillItems: lstItems tag: 'globalTask' class: BPMN20GlobalTaskImpl.
	self fillItems: lstItems tag: 'globalBusinessRuleTask' class: BPMN20GlobalBusinessRuleTaskImpl.
	self fillItems: lstItems tag: 'globalManualTask' class: BPMN20GlobalManualTaskImpl.
	self fillItems: lstItems tag: 'globalScriptTask' class: BPMN20GlobalScriptTaskImpl.
	self fillItems: lstItems tag: 'globalUserTask' class: BPMN20GlobalUserTaskImpl.
	self fillItems: lstItems tag: 'process' class: BPMN20ProcessImpl.
	self fillItems: lstItems tag: 'category' class: BPMN20CategoryImpl.
	self fillItems: lstItems tag: 'collaboration' class: BPMN20CollaborationImpl.
	self fillItems: lstItems tag: 'choreography' class: BPMN20ChoreographyImpl.
	self fillItems: lstItems tag: 'globalChoreographyTask' class: BPMN20GlobalChoreographyTaskImpl.
	self fillItems: lstItems tag: 'globalConversation' class: BPMN20GlobalConversationImpl.
	self fillItems: lstItems tag: 'correlationProperty' class: BPMN20CorrelationPropertyImpl.
	self fillItems: lstItems tag: 'endPoint' class: BPMN20EndPointImpl.
	self fillItems: lstItems tag: 'error' class: BPMN20ErrorImpl.
	self fillItems: lstItems tag: 'escalation' class: BPMN20EscalationImpl.
	self fillItems: lstItems tag: 'eventDefinition' class: BPMN20EventDefinitionImpl.
	self fillItems: lstItems tag: 'cancelEventDefinition' class: BPMN20CancelEventDefinitionImpl.
	self fillItems: lstItems tag: 'compensateEventDefinition' class: BPMN20CompensateEventDefinitionImpl.
	self fillItems: lstItems tag: 'conditionalEventDefinition' class: BPMN20ConditionalEventDefinitionImpl.
	self fillItems: lstItems tag: 'errorEventDefinition' class: BPMN20ErrorEventDefinitionImpl.
	self fillItems: lstItems tag: 'escalationEventDefinition' class: BPMN20EscalationEventDefinitionImpl.
	self fillItems: lstItems tag: 'linkEventDefinition' class: BPMN20LinkEventDefinitionImpl.
	self fillItems: lstItems tag: 'messageEventDefinition' class: BPMN20MessageEventDefinitionImpl.
	self fillItems: lstItems tag: 'signalEventDefinition' class: BPMN20SignalEventDefinitionImpl.

	self fillItems: lstItems tag: 'terminateEventDefinition' class: BPMN20TerminateEventDefinitionImpl.
	self fillItems: lstItems tag: 'timerEventDefinition' class: BPMN20TimerEventDefinitionImpl.
	self fillItems: lstItems tag: 'interface' class: BPMN20InterfaceImpl.
	self fillItems: lstItems tag: 'itemDefinition' class: BPMN20ItemDefinitionImpl.
	self fillItems: lstItems tag: 'message' class: BPMN20MessageImpl.
	
	self fillItems: lstItems tag: 'partnerEntity' class: BPMN20PartnerEntityImpl.
	self fillItems: lstItems tag: 'partnerRole' class: BPMN20PartnerRoleImpl.
	self fillItems: lstItems tag: 'resource' class: BPMN20ResourceImpl.
	self fillItems: lstItems tag: 'signal' class: BPMN20SignalImpl.

	^ lstItems 
	