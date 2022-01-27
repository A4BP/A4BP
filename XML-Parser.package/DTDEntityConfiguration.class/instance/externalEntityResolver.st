accessing
externalEntityResolver
	^ externalEntityResolver ifNil: [externalEntityResolver := DTDCachingExternalEntityResolver new]