getset
allGateways
	|isgatewayVisitor|
	isgatewayVisitor:= BPMN20isGatewayVisitor new.
	^ self flowElements values select:[ :e | e accept: isgatewayVisitor]
