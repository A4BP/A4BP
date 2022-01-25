restful-post
postBuildQueryOnBPMN
    self api: 'bpmnviz' method: #POST handler:
    [ :request | 
		  	| mSTON|
        	mSTON := (STON fromString: request contents).
		 	self delegateBPMNVizExample: mSTON.
	]