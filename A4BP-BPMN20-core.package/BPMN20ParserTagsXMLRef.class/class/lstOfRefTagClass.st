getset
lstOfRefTagClass
	"self reset"
	|lstItems|
	lstItems := Dictionary new.
	lstItems addAll: self lst01.
	lstItems addAll: self lst02.
	lstItems addAll: self lst03.
	self copyList:lstItems with:'bpmn:'.
	self copyList:lstItems with:'bpmn2:'.
	self copyList:lstItems with:'semantic:'.

	^ lstItems