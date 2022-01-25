visit
visitA4BPSOAContext: aModel
	| visualizations bpvc |
	visualizations := OrderedCollection new.

	A4BPVCSOAContext subclasses do: [ :c | 
		bpvc:= c new.
		bpvc visible ifTrue:[
			bpvc bpObj: aModel.
			visualizations add: bpvc.]
		].
	^ visualizations