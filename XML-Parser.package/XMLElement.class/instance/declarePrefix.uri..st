namespacing
declarePrefix: aPrefix uri: aURI
	| oldMapping |

	(oldMapping := self namespaceScope prefixMappingAt: aPrefix ifAbsent: [nil]) = aURI
		ifFalse: [
			self
				updateEnclosedScopesWith: [:scope | scope mapPrefix: aPrefix to: aURI]
				whileTrue: [:scope |
					(scope includesPrefix: aPrefix) not
						or: [scope includesPrefix: aPrefix mappedTo: oldMapping]]
				validateAfter: false]