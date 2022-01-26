rendering
renderOn: aViewOrBuilder
	self paintingBlock
		glamourValue:
			aViewOrBuilder asGlamorousMultiValue , self entity asGlamorousMultiValue
				, self asGlamorousMultiValue.
	"aViewOrBuilder build."
	"self useContextToInitialize: aViewOrBuilder view."
	"self useContextToInitialize: aViewOrBuilder."
	self view: aViewOrBuilder