validating
validatePrefixesOfAttributes: anAttributeCollection from: aStart to: aStop
	"performance critical method"
	| attributeLocalNamesAndURIs |

	"#to:do: for speed"
	aStart to: aStop do: [:i | | attribute prefix uri |
		attribute := anAttributeCollection at: i.
		prefix := attribute xmlPrefixBeforeLocalName.
		(uri :=
			self
				validateAndResolvePrefix: prefix
				ofAttribute: attribute) size > 0 "optimization"
			ifTrue: [| oldSize |
				oldSize :=
					(attributeLocalNamesAndURIs
						ifNil: [
							"not initialized unless needed"
							attributeLocalNamesAndURIs := Set new]) size.
				(attributeLocalNamesAndURIs
					add: (attribute xmlLocalNameAfterPrefix: prefix) -> uri;
					size) > oldSize
					ifFalse: [
						self
							errorAttribute: attribute xmlLocalNameAfterPrefix
							aliasesURI: uri]]]