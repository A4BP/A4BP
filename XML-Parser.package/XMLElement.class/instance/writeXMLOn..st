printing
writeXMLOn: aWriter
	| tagWriter |

	tagWriter := aWriter tag: self name.

	"non-standard use for performance"
	self hasNamespaces
		ifTrue: [tagWriter setXMLNSDeclarations: self namespaceScope prefixMappings].
	self hasAttributes
		ifTrue: [tagWriter setAttributes: self attributeNodes].
	self hasChildren
		ifTrue: [tagWriter with: [self writeInnerXMLOn: aWriter]]
		ifFalse: [tagWriter write].