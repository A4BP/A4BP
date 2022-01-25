finder
sequenceFlows
	^ self flowElements select:[:e | e class = BPMN20SequenceFlowImpl]