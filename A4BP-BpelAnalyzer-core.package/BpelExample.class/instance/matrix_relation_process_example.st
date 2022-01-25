analitics-example
matrix_relation_process_example
   "
	self new matrix_relation_process_example
	"
	| b soaWorld |
	"Create de principal object to draw"	
	b := RTDepMatrix new.
	"Build soaWorld"
	soaWorld := SOAContextTest soaWorldBase.
	
	b shape rectangle size: 10.
	b horizontal: soaWorld allBPWSDL.
	b vertical:  soaWorld allBPProcess.
	b function: [ :v :h |  v iHaveRelationWith: h].
	b open
	