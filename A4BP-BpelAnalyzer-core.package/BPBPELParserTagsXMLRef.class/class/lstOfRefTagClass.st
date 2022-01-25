getset
lstOfRefTagClass
	|lstItems|
	
	lstItems := Dictionary new.

	self fillItems: lstItems tag: 'process' class: BPProcess.	

	self fillItems: lstItems tag: 'invoke' class: BPInvoke.
	self fillItems: lstItems tag: 'reply' class: BPReply.
	self fillItems: lstItems tag: 'receive' class: BPReceive.
	self fillItems: lstItems tag: 'pick' class: BPPick.
	self fillItems: lstItems tag: 'assign' class: BPAssign.
	self fillItems: lstItems tag: 'validate' class: BPValidate.
	self fillItems: lstItems tag: 'empty' class: BPEmpty.
	self fillItems: lstItems tag: 'extensionActitity' class: BPExtensionActitity.
	self fillItems: lstItems tag: 'rethrow' class: BPRethrow.
	self fillItems: lstItems tag: 'throw' class: BPThrow.
	self fillItems: lstItems tag: 'scope' class: BPScope.
	self fillItems: lstItems tag: 'repeatUntil' class: BPRepeatUntil.
	self fillItems: lstItems tag: 'forEach' class: BPForEach.
	self fillItems: lstItems tag: 'while' class: BPWhile.
	self fillItems: lstItems tag: 'exit' class: BPExit.
	self fillItems: lstItems tag: 'sequence' class: BPSequence.
	self fillItems: lstItems tag: 'flow' class: BPFlow.
	self fillItems: lstItems tag: 'if' class: BPIf.
	self fillItems: lstItems tag: 'wait' class: BPWait.
	self fillItems: lstItems tag: 'partnerLinks' class: BPPartnerLinks.
	self fillItems: lstItems tag: 'variables' class: BPVariables.
	self fillItems: lstItems tag: 'partnerLink' class: BPPartnerLink.
	self fillItems: lstItems tag: 'variable' class: BPVariable.
	self fillItems: lstItems tag: 'faultHandlers' class: BPFaultHandlers.
	self fillItems: lstItems tag: 'catch' class: BPCatch.
	self fillItems: lstItems tag: 'catchAll' class: BPCatchAll.
	self fillItems: lstItems tag: 'onMessage' class: BPOnMessage.
	self fillItems: lstItems tag: 'copy' class: BPCopy.
	self fillItems: lstItems tag: 'from' class: BPFrom.		
	self fillItems: lstItems tag: 'to' class: BPTo.		
	self fillItems: lstItems tag: 'import' class: BPImport.
	
		
	"second model option bpel:<tag>"
	self copyList:lstItems with:'bpel:'.
	
	^ lstItems