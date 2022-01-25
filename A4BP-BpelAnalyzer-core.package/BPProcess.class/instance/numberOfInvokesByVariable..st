metrics
numberOfInvokesByVariable: variable
	|count|
	count:=0.
	self allInvokes do:[:each | (each iHaveThisVariable: variable) ifTrue:[count+1]].