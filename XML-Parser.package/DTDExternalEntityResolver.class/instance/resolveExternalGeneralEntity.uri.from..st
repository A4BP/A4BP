resolving
resolveExternalGeneralEntity: aName uri: anEntityURI from: aSourceURI
	^ self
		resolveExternalEntity: aName
		uri: anEntityURI
		from: aSourceURI
		class: DTDExternalGeneralEntity