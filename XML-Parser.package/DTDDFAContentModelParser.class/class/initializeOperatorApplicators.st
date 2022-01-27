class initialization
initializeOperatorApplicators
	"use Array for faster lookup"
	(OperatorApplicators := Array new: 256)
		at: $, asciiValue put: #applyConcatenation;
		at: $| asciiValue put: #applyBranch;
		at: $? asciiValue put: #applyOptional;
		at: $* asciiValue put: #applyStar;
		at: $+ asciiValue put: #applyPlus