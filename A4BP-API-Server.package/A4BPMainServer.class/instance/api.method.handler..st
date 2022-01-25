config
api: path method: method handler: aBlock
	|key|
	key := self genkeywithpath: path andMethod: method.
	mapper at: key put: aBlock.  
	"add:( [ :req | req uri = path and: [ req method = method ] ] -> aBlock)."
	