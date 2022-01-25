examples-Roassal3d
exampleR3CityBuilder001
	"self new exampleR3CityBuilder001"
	| b  soaCtx|
	soaCtx := SOAContext new.
	soaCtx := SOAContextTest soaWorldBase.
	b := R3CityBuilder new.
	b nodes: soaCtx lstBPProcess.
	b open