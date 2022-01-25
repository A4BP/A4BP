open
openSystemFileExplorer
	| f answer aSOAContext aSOAAnalyzer |
	f := MorphicUIManager new.
	answer := f chooseDirectory.
	answer ifNotNil:[
		aSOAAnalyzer := A4BPSOAAnalyzer instance.
		aSOAContext := A4BPSOAContext createBaseOnPath: answer.
		aSOAAnalyzer addSOAContext: aSOAContext
	]