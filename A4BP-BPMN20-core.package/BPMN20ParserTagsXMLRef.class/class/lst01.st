getset
lst01
	|lstItems|
	lstItems := Dictionary new.
	
	self fillItems: lstItems tag: 'artifact' class: BPMN20ArtifactImpl.
	self fillItems: lstItems tag: 'association' class: BPMN20AssociationImpl.
	self fillItems: lstItems tag: 'group' class: BPMN20GroupImpl.
	self fillItems: lstItems tag: 'textAnnotation' class: BPMN20TextAnnotationImpl.
	self fillItems: lstItems tag: 'assignment' class: BPMN20AssignmentImpl.
	self fillItems: lstItems tag: 'auditing' class: BPMN20AuditingImpl.
	self fillItems: lstItems tag: 'categoryValue' class: BPMN20CategoryValueImpl.
	self fillItems: lstItems tag: 'complexBehaviorDefinition' class: BPMN20ComplexBehaviorDefinitionImpl.
	self fillItems: lstItems tag: 'conversationAssociation' class: BPMN20ConversationAssociationImpl.
	self fillItems: lstItems tag: 'conversationLink' class: BPMN20ConversationLinkImpl.
	self fillItems: lstItems tag: 'conversationNode' class: BPMN20ConversationNodeImpl.
	self fillItems: lstItems tag: 'callConversation' class: BPMN20CallConversationImpl.
	self fillItems: lstItems tag: 'conversation' class: BPMN20ConversationImpl.
	self fillItems: lstItems tag: 'subConversation' class: BPMN20SubConversationImpl.
	self fillItems: lstItems tag: 'correlationKey' class: BPMN20CorrelationKeyImpl.
	self fillItems: lstItems tag: 'correlationPropertyBinding' class: BPMN20CorrelationPropertyBindingImpl.
	self fillItems: lstItems tag: 'correlationPropertyRetrievalExpression' class: BPMN20CorrelationPropertyRetrievalExpressionImpl.
	self fillItems: lstItems tag: 'correlationSubscription' class: BPMN20CorrelationSubscriptionImpl.
	self fillItems: lstItems tag: 'dataAssociation' class: BPMN20DataAssociationImpl.
	self fillItems: lstItems tag: 'dataInputAssociation' class: BPMN20DataInputAssociationImpl.
	self fillItems: lstItems tag: 'dataOutputAssociation' class: BPMN20DataOutputAssociationImpl.
	self fillItems: lstItems tag: 'dataState' class: BPMN20DataStateImpl.
	self fillItems: lstItems tag: 'definitions' class: BPMN20DefinitionsImpl.
	self fillItems: lstItems tag: 'documentation' class: BPMN20DocumentationImpl.
	self fillItems: lstItems tag: 'expression' class: BPMN20ExpressionImpl.
	self fillItems: lstItems tag: 'formalExpression' class: BPMN20FormalExpressionImpl.
	self fillItems: lstItems tag: 'flowElement' class: BPMN20FlowElementImpl.
	self fillItems: lstItems tag: 'dataObject' class: BPMN20DataObjectImpl.
	self fillItems: lstItems tag: 'dataObjectReference' class: BPMN20DataObjectReferenceImpl.
	self fillItems: lstItems tag: 'dataStoreReference' class: BPMN20DataStoreReferenceImpl.
	self fillItems: lstItems tag: 'flowNode' class: BPMN20FlowNodeImpl.
	self fillItems: lstItems tag: 'activity' class: BPMN20ActivityImpl.
	self fillItems: lstItems tag: 'callActivity' class: BPMN20CallActivityImpl.
	self fillItems: lstItems tag: 'subProcess' class: BPMN20SubProcessImpl.
	self fillItems: lstItems tag: 'adHocSubProcess' class: BPMN20AdHocSubProcessImpl.
	self fillItems: lstItems tag: 'transaction' class: BPMN20TransactionImpl.
	self fillItems: lstItems tag: 'task' class: BPMN20TaskImpl.
	self fillItems: lstItems tag: 'businessRuleTask' class: BPMN20BusinessRuleTaskImpl.
	self fillItems: lstItems tag: 'manualTask' class: BPMN20ManualTaskImpl.
	self fillItems: lstItems tag: 'receiveTask' class: BPMN20ReceiveTaskImpl.
	self fillItems: lstItems tag: 'scriptTask' class: BPMN20ScriptTaskImpl.
	self fillItems: lstItems tag: 'sendTask' class: BPMN20SendTaskImpl.
	self fillItems: lstItems tag: 'serviceTask' class: BPMN20ServiceTaskImpl.
	self fillItems: lstItems tag: 'userTask' class: BPMN20UserTaskImpl.
	self fillItems: lstItems tag: 'choreographyActivity' class: BPMN20ChoreographyActivityImpl.
	self fillItems: lstItems tag: 'callChoreography' class: BPMN20CallChoreographyImpl.
	self fillItems: lstItems tag: 'choreographyTask' class: BPMN20ChoreographyTaskImpl.
	self fillItems: lstItems tag: 'subChoreography' class: BPMN20SubChoreographyImpl.
	self fillItems: lstItems tag: 'event' class: BPMN20EventImpl.
	self fillItems: lstItems tag: 'catchEvent' class: BPMN20CatchEventImpl.
	self fillItems: lstItems tag: 'boundaryEvent' class: BPMN20BoundaryEventImpl.
	self fillItems: lstItems tag: 'intermediateCatchEvent' class: BPMN20IntermediateCatchEventImpl.
	self fillItems: lstItems tag: 'startEvent' class: BPMN20StartEventImpl.
	self fillItems: lstItems tag: 'throwEvent' class: BPMN20ThrowEventImpl.
	self fillItems: lstItems tag: 'endEvent' class: BPMN20EndEventImpl.
	self fillItems: lstItems tag: 'implicitThrowEvent' class: BPMN20ImplicitThrowEventImpl.
	self fillItems: lstItems tag: 'intermediateThrowEvent' class: BPMN20IntermediateThrowEventImpl.
	self fillItems: lstItems tag: 'gateway' class: BPMN20GatewayImpl.
	self fillItems: lstItems tag: 'complexGateway' class: BPMN20ComplexGatewayImpl.
	self fillItems: lstItems tag: 'eventBasedGateway' class: BPMN20EventBasedGatewayImpl.
	self fillItems: lstItems tag: 'exclusiveGateway' class: BPMN20ExclusiveGatewayImpl.
	self fillItems: lstItems tag: 'inclusiveGateway' class: BPMN20InclusiveGatewayImpl.
	self fillItems: lstItems tag: 'parallelGateway' class: BPMN20ParallelGatewayImpl.
	self fillItems: lstItems tag: 'sequenceFlow' class: BPMN20SequenceFlowImpl.
	self fillItems: lstItems tag: 'flowElementsContainer' class: BPMN20FlowElementsContainerImpl.
	self fillItems: lstItems tag: 'inputOutputBinding' class: BPMN20InputOutputBindingImpl.
	self fillItems: lstItems tag: 'inputOutputSpecification' class: BPMN20InputOutputSpecificationImpl.
	self fillItems: lstItems tag: 'inputSet' class: BPMN20InputSetImpl.
	self fillItems: lstItems tag: 'itemAwareElement' class: BPMN20ItemAwareElementImpl.

	^ lstItems 
	