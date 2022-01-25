as yet unclassified
basic002
	"self new basic002"
	"teest"
	|view ctx node|
	view:= RTMondrian new .
	ctx:=SOAContextTest soaWorldBase.
	node:=ctx allBPProcess select:[:n| n aName='OrderProcessor'].
	node:= node first.
	"[start script]"
	view node:'act' forIt:[
view shape label text:[:n| n aName,'>',n hash asString];color:[:n| n accept: A4BPUIBPModelColorBuilderVisitor new].
view nodes: node  allActivities.
view verticalLineLayout.
].
view node:'var' forIt:[
view shape label text:[:n| n aName,'>',n hash asString];color:[:n| n accept: A4BPUIBPModelColorBuilderVisitor new].
view nodes: (node  allVariables) forEach:[:v|
	view shape label text:[:n| n aName,'>',n hash asString];color:[:n| n accept: A4BPUIBPModelColorBuilderVisitor new]. 
	view nodes: v allRelations].
view verticalLineLayout.
].
view edges: node allVariables from: #yourself to:[:v|v allRelations]. 
view horizontalLineLayout.
	"[end script]"
	view open.