getset
lstOfRefTagClass
	"self reset"
	|lstItems|
	lstItems := Dictionary new.

	self fillItems: lstItems tag: 'abstractAssignBound' class: BPEL20AbstractAssignBoundImpl.
	self fillItems: lstItems tag: 'bPELExtensibilityElement' class: BPEL20BPELExtensibilityElementImpl.
	self fillItems: lstItems tag: 'bPELExtensibleElement' class: BPEL20BPELExtensibleElementImpl.
	self fillItems: lstItems tag: 'activity' class: BPEL20ActivityImpl.
	self fillItems: lstItems tag: 'assign' class: BPEL20AssignImpl.
	self fillItems: lstItems tag: 'compensate' class: BPEL20CompensateImpl.
	self fillItems: lstItems tag: 'compensateScope' class: BPEL20CompensateScopeImpl.
	self fillItems: lstItems tag: 'empty' class: BPEL20EmptyImpl.
	self fillItems: lstItems tag: 'exit' class: BPEL20ExitImpl.
	self fillItems: lstItems tag: 'extensionActivity' class: BPEL20ExtensionActivityImpl.
	self fillItems: lstItems tag: 'flow' class: BPEL20FlowImpl.
	self fillItems: lstItems tag: 'forEach' class: BPEL20ForEachImpl.
	self fillItems: lstItems tag: 'if' class: BPEL20IfImpl.
	self fillItems: lstItems tag: 'opaqueActivity' class: BPEL20OpaqueActivityImpl.
	self fillItems: lstItems tag: 'partnerActivity' class: BPEL20PartnerActivityImpl.
	self fillItems: lstItems tag: 'invoke' class: BPEL20InvokeImpl.
	self fillItems: lstItems tag: 'receive' class: BPEL20ReceiveImpl.
	self fillItems: lstItems tag: 'reply' class: BPEL20ReplyImpl.
	self fillItems: lstItems tag: 'pick' class: BPEL20PickImpl.
	self fillItems: lstItems tag: 'repeatUntil' class: BPEL20RepeatUntilImpl.
	self fillItems: lstItems tag: 'rethrow' class: BPEL20RethrowImpl.
	self fillItems: lstItems tag: 'scope' class: BPEL20ScopeImpl.
	self fillItems: lstItems tag: 'sequence' class: BPEL20SequenceImpl.
	self fillItems: lstItems tag: 'throw' class: BPEL20ThrowImpl.
	self fillItems: lstItems tag: 'validate' class: BPEL20ValidateImpl.
	self fillItems: lstItems tag: 'wait' class: BPEL20WaitImpl.
	self fillItems: lstItems tag: 'while' class: BPEL20WhileImpl.
	self fillItems: lstItems tag: 'catchAll' class: BPEL20CatchAllImpl.
	self fillItems: lstItems tag: 'catch' class: BPEL20CatchImpl.
	self fillItems: lstItems tag: 'compensationHandler' class: BPEL20CompensationHandlerImpl.
	self fillItems: lstItems tag: 'completionCondition' class: BPEL20CompletionConditionImpl.
	self fillItems: lstItems tag: 'copy' class: BPEL20CopyImpl.
	self fillItems: lstItems tag: 'correlation' class: BPEL20CorrelationImpl.
	self fillItems: lstItems tag: 'correlationSet' class: BPEL20CorrelationSetImpl.
	self fillItems: lstItems tag: 'correlationSets' class: BPEL20CorrelationSetsImpl.
	self fillItems: lstItems tag: 'correlations' class: BPEL20CorrelationsImpl.
	self fillItems: lstItems tag: 'documentation' class: BPEL20DocumentationImpl.
	self fillItems: lstItems tag: 'elseIf' class: BPEL20ElseIfImpl.
	self fillItems: lstItems tag: 'else' class: BPEL20ElseImpl.
	self fillItems: lstItems tag: 'eventHandler' class: BPEL20EventHandlerImpl.
	self fillItems: lstItems tag: 'extension' class: BPEL20ExtensionImpl.
	self fillItems: lstItems tag: 'extensions' class: BPEL20ExtensionsImpl.
	self fillItems: lstItems tag: 'faultHandler' class: BPEL20FaultHandlerImpl.
	self fillItems: lstItems tag: 'from' class: BPEL20FromImpl.
	self fillItems: lstItems tag: 'fromPart' class: BPEL20FromPartImpl.
	self fillItems: lstItems tag: 'fromParts' class: BPEL20FromPartsImpl.
	self fillItems: lstItems tag: 'import' class: BPEL20ImportImpl.
	self fillItems: lstItems tag: 'link' class: BPEL20LinkImpl.
	self fillItems: lstItems tag: 'links' class: BPEL20LinksImpl.
	self fillItems: lstItems tag: 'messageExchange' class: BPEL20MessageExchangeImpl.
	self fillItems: lstItems tag: 'messageExchanges' class: BPEL20MessageExchangesImpl.
	self fillItems: lstItems tag: 'onAlarm' class: BPEL20OnAlarmImpl.
	self fillItems: lstItems tag: 'onEvent' class: BPEL20OnEventImpl.
	self fillItems: lstItems tag: 'onMessage' class: BPEL20OnMessageImpl.
	self fillItems: lstItems tag: 'partnerLink' class: BPEL20PartnerLinkImpl.
	self fillItems: lstItems tag: 'partnerLinks' class: BPEL20PartnerLinksImpl.
	self fillItems: lstItems tag: 'process' class: BPEL20ProcessImpl.
	self fillItems: lstItems tag: 'source' class: BPEL20SourceImpl.
	self fillItems: lstItems tag: 'sources' class: BPEL20SourcesImpl.
	self fillItems: lstItems tag: 'target' class: BPEL20TargetImpl.
	self fillItems: lstItems tag: 'targets' class: BPEL20TargetsImpl.
	self fillItems: lstItems tag: 'terminationHandler' class: BPEL20TerminationHandlerImpl.
	self fillItems: lstItems tag: 'to' class: BPEL20ToImpl.
	self fillItems: lstItems tag: 'toPart' class: BPEL20ToPartImpl.
	self fillItems: lstItems tag: 'toParts' class: BPEL20ToPartsImpl.
	self fillItems: lstItems tag: 'variable' class: BPEL20VariableImpl.
	self fillItems: lstItems tag: 'variables' class: BPEL20VariablesImpl.
	self fillItems: lstItems tag: 'bPELFactory' class: BPEL20BPELFactoryImpl.
	self fillItems: lstItems tag: 'bPELPackage' class: BPEL20BPELPackageImpl.
	self fillItems: lstItems tag: 'expression' class: BPEL20ExpressionImpl.
	self fillItems: lstItems tag: 'booleanExpression' class: BPEL20BooleanExpressionImpl.
	self fillItems: lstItems tag: 'branches' class: BPEL20BranchesImpl.
	self fillItems: lstItems tag: 'condition' class: BPEL20ConditionImpl.
	self fillItems: lstItems tag: 'serviceRef' class: BPEL20ServiceRefImpl.
	self fillItems: lstItems tag: 'unknownExtensibilityAttribute' class: BPEL20UnknownExtensibilityAttributeImpl.

	
	self fillItems: lstItems tag: 'tAbstractAssignBound' class: BPEL20AbstractAssignBoundImpl.
	self fillItems: lstItems tag: 'tBPELExtensibilityElement' class: BPEL20BPELExtensibilityElementImpl.
	self fillItems: lstItems tag: 'tBPELExtensibleElement' class: BPEL20BPELExtensibleElementImpl.
	self fillItems: lstItems tag: 'tActivity' class: BPEL20ActivityImpl.
	self fillItems: lstItems tag: 'tAssign' class: BPEL20AssignImpl.
	self fillItems: lstItems tag: 'tCompensate' class: BPEL20CompensateImpl.
	self fillItems: lstItems tag: 'tCompensateScope' class: BPEL20CompensateScopeImpl.
	self fillItems: lstItems tag: 'tEmpty' class: BPEL20EmptyImpl.
	self fillItems: lstItems tag: 'tExit' class: BPEL20ExitImpl.
	self fillItems: lstItems tag: 'tExtensionActivity' class: BPEL20ExtensionActivityImpl.
	self fillItems: lstItems tag: 'tFlow' class: BPEL20FlowImpl.
	self fillItems: lstItems tag: 'tForEach' class: BPEL20ForEachImpl.
	self fillItems: lstItems tag: 'tIf' class: BPEL20IfImpl.
	self fillItems: lstItems tag: 'tOpaqueActivity' class: BPEL20OpaqueActivityImpl.
	self fillItems: lstItems tag: 'tPartnerActivity' class: BPEL20PartnerActivityImpl.
	self fillItems: lstItems tag: 'tInvoke' class: BPEL20InvokeImpl.
	self fillItems: lstItems tag: 'tReceive' class: BPEL20ReceiveImpl.
	self fillItems: lstItems tag: 'tReply' class: BPEL20ReplyImpl.
	self fillItems: lstItems tag: 'tPick' class: BPEL20PickImpl.
	self fillItems: lstItems tag: 'tRepeatUntil' class: BPEL20RepeatUntilImpl.
	self fillItems: lstItems tag: 'tRethrow' class: BPEL20RethrowImpl.
	self fillItems: lstItems tag: 'tScope' class: BPEL20ScopeImpl.
	self fillItems: lstItems tag: 'tSequence' class: BPEL20SequenceImpl.
	self fillItems: lstItems tag: 'tThrow' class: BPEL20ThrowImpl.
	self fillItems: lstItems tag: 'tValidate' class: BPEL20ValidateImpl.
	self fillItems: lstItems tag: 'tWait' class: BPEL20WaitImpl.
	self fillItems: lstItems tag: 'tWhile' class: BPEL20WhileImpl.
	self fillItems: lstItems tag: 'tCatchAll' class: BPEL20CatchAllImpl.
	self fillItems: lstItems tag: 'tCatch' class: BPEL20CatchImpl.
	self fillItems: lstItems tag: 'tCompensationHandler' class: BPEL20CompensationHandlerImpl.
	self fillItems: lstItems tag: 'tCompletionCondition' class: BPEL20CompletionConditionImpl.
	self fillItems: lstItems tag: 'tCopy' class: BPEL20CopyImpl.
	self fillItems: lstItems tag: 'tCorrelation' class: BPEL20CorrelationImpl.
	self fillItems: lstItems tag: 'tCorrelationSet' class: BPEL20CorrelationSetImpl.
	self fillItems: lstItems tag: 'tCorrelationSets' class: BPEL20CorrelationSetsImpl.
	self fillItems: lstItems tag: 'tCorrelations' class: BPEL20CorrelationsImpl.
	self fillItems: lstItems tag: 'tDocumentation' class: BPEL20DocumentationImpl.
	self fillItems: lstItems tag: 'tElseIf' class: BPEL20ElseIfImpl.
	self fillItems: lstItems tag: 'tElse' class: BPEL20ElseImpl.
	self fillItems: lstItems tag: 'tEventHandler' class: BPEL20EventHandlerImpl.
	self fillItems: lstItems tag: 'tExtension' class: BPEL20ExtensionImpl.
	self fillItems: lstItems tag: 'tExtensions' class: BPEL20ExtensionsImpl.
	self fillItems: lstItems tag: 'tFaultHandler' class: BPEL20FaultHandlerImpl.
	self fillItems: lstItems tag: 'tFrom' class: BPEL20FromImpl.
	self fillItems: lstItems tag: 'tFromPart' class: BPEL20FromPartImpl.
	self fillItems: lstItems tag: 'tFromParts' class: BPEL20FromPartsImpl.
	self fillItems: lstItems tag: 'tImport' class: BPEL20ImportImpl.
	self fillItems: lstItems tag: 'tLink' class: BPEL20LinkImpl.
	self fillItems: lstItems tag: 'tLinks' class: BPEL20LinksImpl.
	self fillItems: lstItems tag: 'tMessageExchange' class: BPEL20MessageExchangeImpl.
	self fillItems: lstItems tag: 'tMessageExchanges' class: BPEL20MessageExchangesImpl.
	self fillItems: lstItems tag: 'tOnAlarm' class: BPEL20OnAlarmImpl.
	self fillItems: lstItems tag: 'tOnEvent' class: BPEL20OnEventImpl.
	self fillItems: lstItems tag: 'tOnMessage' class: BPEL20OnMessageImpl.
	self fillItems: lstItems tag: 'tPartnerLink' class: BPEL20PartnerLinkImpl.
	self fillItems: lstItems tag: 'tPartnerLinks' class: BPEL20PartnerLinksImpl.
	self fillItems: lstItems tag: 'tProcess' class: BPEL20ProcessImpl.
	self fillItems: lstItems tag: 'tSource' class: BPEL20SourceImpl.
	self fillItems: lstItems tag: 'tSources' class: BPEL20SourcesImpl.
	self fillItems: lstItems tag: 'tTarget' class: BPEL20TargetImpl.
	self fillItems: lstItems tag: 'tTargets' class: BPEL20TargetsImpl.
	self fillItems: lstItems tag: 'tTerminationHandler' class: BPEL20TerminationHandlerImpl.
	self fillItems: lstItems tag: 'tTo' class: BPEL20ToImpl.
	self fillItems: lstItems tag: 'tToPart' class: BPEL20ToPartImpl.
	self fillItems: lstItems tag: 'tToParts' class: BPEL20ToPartsImpl.
	self fillItems: lstItems tag: 'tVariable' class: BPEL20VariableImpl.
	self fillItems: lstItems tag: 'tVariables' class: BPEL20VariablesImpl.
	self fillItems: lstItems tag: 'tBPELFactory' class: BPEL20BPELFactoryImpl.
	self fillItems: lstItems tag: 'tBPELPackage' class: BPEL20BPELPackageImpl.
	self fillItems: lstItems tag: 'tExpression' class: BPEL20ExpressionImpl.
	self fillItems: lstItems tag: 'tBooleanExpression' class: BPEL20BooleanExpressionImpl.
	self fillItems: lstItems tag: 'tBranches' class: BPEL20BranchesImpl.
	self fillItems: lstItems tag: 'tCondition' class: BPEL20ConditionImpl.
	self fillItems: lstItems tag: 'tServiceRef' class: BPEL20ServiceRefImpl.
	self fillItems: lstItems tag: 'tUnknownExtensibilityAttribute' class: BPEL20UnknownExtensibilityAttributeImpl.

	
	
	

	
	"second model option bpel:<tag>"
	self copyList:lstItems with:'bpel:'.
	
	^ lstItems