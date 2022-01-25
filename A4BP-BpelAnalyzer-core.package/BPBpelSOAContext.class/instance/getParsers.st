creator
getParsers
	| parsers |
	parsers := super getParsers.
	parsers add: BPBPELParser new.
	^ parsers