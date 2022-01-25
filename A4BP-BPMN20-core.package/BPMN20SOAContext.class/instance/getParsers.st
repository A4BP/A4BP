creator
getParsers
	| parsers |
	parsers := super getParsers.
	parsers add: BPMN20Parser new.
	^ parsers