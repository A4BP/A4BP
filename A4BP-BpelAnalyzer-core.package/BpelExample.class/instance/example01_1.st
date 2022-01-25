examples
example01_1
	"
	self new example01
	"
	| b  soaWorld |
	soaWorld := SOAContextTest soaWorldBase.
	
	b := ROMondrianViewBuilder new.
	b interaction
			popupText: #name;
			action: #inspect.
			
	b shape rectangle
				width: #numberOfVariables;
				height: #numberOfInvokes.
				
	b nodes: soaWorld allBPProcess.
	b open