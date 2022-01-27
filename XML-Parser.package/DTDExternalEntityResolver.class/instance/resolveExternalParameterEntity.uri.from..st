resolving
resolveExternalParameterEntity: aName uri: anEntityURI from: aSourceURI
	^ self
		resolveExternalEntity: aName
		uri: anEntityURI
		from: aSourceURI
		class: DTDExternalParameterEntity