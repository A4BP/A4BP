finder
startEvent
	|lst|
	lst := self flowElements select: [ :e | e class = BPMN20StartEventImpl ].
	lst size > 0 ifTrue:[^  lst first].
	^ A4BPEmptyObj instance.