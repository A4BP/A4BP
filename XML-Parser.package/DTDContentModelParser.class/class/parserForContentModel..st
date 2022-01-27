parsing
parserForContentModel: aContentModel
	"the tokenizer removes all spaces from the content model"
	^ (aContentModel notEmpty and: [aContentModel first == $(])
		ifTrue: [
			(aContentModel size > 1 and: [aContentModel second == $#])
				ifTrue: [DTDMixedContentModelParser]
				ifFalse: [DTDDFAContentModelParser]]
		ifFalse: [DTDLiteralContentModelParser]