getset
allSequenceFlows
	^ self flowElements values select:[ :e | e class = BPMN20SequenceFlowImpl]
