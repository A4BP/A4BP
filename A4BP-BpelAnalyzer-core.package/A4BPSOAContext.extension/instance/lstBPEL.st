*A4BP-BpelAnalyzer-core-model
lstBPEL
	^ lstElements select: [ :e | e class = BPProcess ]