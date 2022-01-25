initialization
initialize
	super initialize.
	lstComplexTypes := Dictionary new.
	lstSimpleTypes := Dictionary new.
	lstElements := Dictionary new.
	iInternalReference:=false.
	import := A4BPEmptyObj instance.
	include := A4BPEmptyObj instance.
	mySchema := self.