adding
addValidatorForElement: anElement contentModel: aContentModel
	self elementValidators
		at: anElement
		ifAbsentPut: [
			((DTDContentModelParser parserForContentModel: aContentModel)
				element: anElement
				contentModel: aContentModel) parse]