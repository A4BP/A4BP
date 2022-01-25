getset
lstOfXSDTagClass
	|lstItems|
	lstItems := Dictionary new.
	
	lstItems add: (BPParserRefTagClass getRefOnTag: 'schema' objClass: BPXSDSchema).
	lstItems add: (BPParserRefTagClass getRefOnTag: 'import' objClass: BPXSDImport).
	lstItems add: (BPParserRefTagClass getRefOnTag: 'sequence' objClass: BPXSDSequence ).
	lstItems add: (BPParserRefTagClass getRefOnTag: 'element' objClass: BPXSDElement ).	
	lstItems add: (BPParserRefTagClass getRefOnTag: 'complexType' objClass: BPXSDComplexType ).
	lstItems add: (BPParserRefTagClass getRefOnTag: 'include' objClass: BPXSDInclude).
	
	
	"second model option xsd:<tag>"
	lstItems copy do:[ :i |
		lstItems add: (BPParserRefTagClass getRefOnTag: ( 'xsd:', i tag) objClass: (i objclass) ). 
	].

	^ lstItems
	
