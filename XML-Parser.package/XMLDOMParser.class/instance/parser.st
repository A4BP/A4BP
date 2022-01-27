parsing
parser
	| parser |

	parser := super parser.
	self document
		ifNotNil: [self setupInnerXMLDocumentForParser: parser].
	self nodeStack isEmpty
		ifFalse: [self setupInnerXMLNodesForParser: parser].
	^ parser.