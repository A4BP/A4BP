actions
xpath
	"return a string with the path of the node"
	^ (self xpathOf: parser parent),'/',parser name.