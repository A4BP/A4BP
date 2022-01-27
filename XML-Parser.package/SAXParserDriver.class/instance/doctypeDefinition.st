accessing
doctypeDefinition
	^ doctypeDefinition ifNil: [doctypeDefinition := DTDDoctypeDefinition new]