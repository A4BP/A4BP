combining
/ aURIOrString
	| uriToCombineWith |

	(uriToCombineWith := aURIOrString asXMLURI) isEmpty
		ifFalse: [
			(uriToCombineWith isRelative)
				ifTrue: [^ self copy combineWithRelativeURI: uriToCombineWith]
				ifFalse: [^ uriToCombineWith]]