glamour-builder-display
displaySOAModelsIn: constructor
	| actiontreev |
	"build the list of options base on the selected element"
	actiontreev := A4BPUIGLMRClick new.
	constructor tree
		title: 'SOA Models';
		children: [ :root :childs | self childrenOf: root on: childs ];
		icon: [ :el |  el accept: A4BPUIBVFactory iconVisitor ];
		format: #name.
	^ constructor