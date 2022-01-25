private
validateNamespacePrefixOfAttribute: anAttribute
	| attributePrefix attributeLocalName attributeNamespaceURI |

	self usesNamespaces
		ifFalse: [^ self].

	attributePrefix := anAttribute prefix.
	"send #validateAndResolvePrefix:ofAttribute: even if attributePrefix is
	empty, to catch names like ':name', and return if the resolved URI is empty,
	since non-default namespace URIs can't be empty, and attribute namespaces
	are always non-default"
	(attributeNamespaceURI :=
		self namespaceScope
			validateAndResolvePrefix: attributePrefix
			ofAttribute: anAttribute name) size > 0
		ifFalse: [^ self].
	attributeLocalName :=
		anAttribute name xmlLocalNameAfterPrefix: attributePrefix.
	self attributeNodesDo: [:each | | eachLocalName |
		(each ~= anAttribute
			and: [(eachLocalName := each localName) = attributeLocalName])
			ifTrue: [
				(self namespaceScope resolvePrefix:
					(each name xmlPrefixBeforeLocalName: eachLocalName)) =
						attributeNamespaceURI
					ifTrue: [
						self namespaceScope
							errorAttribute: each
							aliasesURI: attributeNamespaceURI]]].