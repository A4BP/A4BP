accessing
validator
	^ validator ifNil: [validator := DTDDocumentValidator doctypeDefinition: self doctypeDefinition]