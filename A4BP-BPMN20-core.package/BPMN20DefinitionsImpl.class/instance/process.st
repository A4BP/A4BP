dsl
process
	^ rootElements select:[ :e | e class = BPMN20ProcessImpl].