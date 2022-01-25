glamour-builder
bpProcessIn: constructor
"
old presentation
------------------------------------
constructor list
	display:[:org|org allBPProcess];
	format:#asString.
------------------------------------
"
constructor tree
	display:[:org|org];
	children:[:rootPackage :org | (self childrenOf:rootPackage on:org)];
	format:#asString.


	
