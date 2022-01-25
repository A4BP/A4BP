private
versionFloatFromString: aString
	aString size = 3
		ifTrue: [
			aString = '1.0'
				ifTrue: [^ 1.0].
			aString = '1.1'
				ifTrue: [^ 1.1]].
	^ Float readFrom: aString readStream.