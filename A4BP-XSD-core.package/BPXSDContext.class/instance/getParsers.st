creator
getParsers
	| parsers |
	parsers := super getParsers.
	parsers add: BPParserXSDSchema new.
	^ parsers