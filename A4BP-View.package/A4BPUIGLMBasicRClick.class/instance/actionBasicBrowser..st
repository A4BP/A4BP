model-a4bp
actionBasicBrowser: aModel
	|actions act|
	actions:= OrderedCollection new.

	"""Roassal2 Easel""
	act:=GLMGenericAction new 
	action:[ A4BPGLMRoassal2Easel openOn:{#model->aModel}];
	""Display Browser in several language""
	category:A4BPUII18n msg msgBrowser;
	title:A4BPUII18n msg msgInRoassal2Easel.
	actions add:act."
	
	"Inspect Element"
	act:=GLMGenericAction new 
	action:[aModel inspect];
	"category:'Inspect';"
	title:A4BPUII18n msg msgInspect.
	actions add:act.

	"Browse Class Object"
	act:=GLMGenericAction new 
	action:[aModel browse];
	"category:'Inspect';"
	title:A4BPUII18n msg msgSource.
	actions add:act.
	

	^ actions.
	