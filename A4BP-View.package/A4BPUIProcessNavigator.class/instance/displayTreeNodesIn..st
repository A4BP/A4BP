as yet unclassified
displayTreeNodesIn: constructor
	| actiontreev |
	"build the list of options base on the selected element"
	actiontreev := A4BPUIGLMRClick new.
	actiontreev mainBrowser: mainBrowser.
	constructor tree
		title: A4BPUII18n msg msgModels;
		display: [ :org | org elements];
		children: [ :rootPackage :org | self childrenOf: rootPackage on: org ];
		icon: [ :el |  el accept: A4BPUIBVFactory iconVisitor ];
		"Show menu"
		act: [ :b |  self openSystemFileExplorer. b update ]
		icon: A4BPUIIcons openIcon
		entitled: A4BPUII18n msg msgOpenNewSOAContext;
		dynamicActionsOnSelection: [ :b |b selection accept: actiontreev];
		format: #label.
	^ constructor