getset
copyList: lstItems with: v
	"second model option bpmn:<tag>"
	lstItems copy do:[ :i |
		lstItems add: (A4BPParserRefTagClass getRefOnTag: ( v, i tag) objClass: (i objclass) ). 
	].
	
	^ lstItems