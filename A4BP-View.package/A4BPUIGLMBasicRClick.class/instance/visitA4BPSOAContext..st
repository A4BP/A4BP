model-a4bp
visitA4BPSOAContext: aModel
	| actions act|
	actions := self actionBasicBrowser: aModel.	
		
	"Delete"
	act:=GLMGenericAction new 
	action:[ :b | 
		aModel parent deleteSOAContext: aModel.
		b update.
		mainBrowser update.
		];
	"category: A4BPUII18n msg msgBPSim;"
	title: A4BPUII18n msg msgDelete.
	actions add:act.	
		
		
	^ actions