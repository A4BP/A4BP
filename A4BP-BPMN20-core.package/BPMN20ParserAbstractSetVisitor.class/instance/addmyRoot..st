add
addmyRoot: aModel
	"add definitions as a root implements"
	| root |
	root := element myRoot.
	root addElementInDictionary: aModel .
	aModel myRoot: root.