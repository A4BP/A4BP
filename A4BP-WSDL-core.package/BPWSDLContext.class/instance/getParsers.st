creator
getParsers
	| parsers |
	parsers := super getParsers.
	parsers add: BPParserWSDL new.
	^ parsers