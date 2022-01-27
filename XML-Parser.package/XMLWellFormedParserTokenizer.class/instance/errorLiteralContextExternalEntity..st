errors
errorLiteralContextExternalEntity: anEntity
	self parseError:
		'External general entity reference ', anEntity asReference, ' in literal context'