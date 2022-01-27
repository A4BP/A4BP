accessing
prefixesOfNamespaceURI: aURI
	| prefixes |

	prefixes := Set new.
	aURI = self class xmlNamespaceURI
		ifTrue: [prefixes add: 'xml']
		ifFalse: [
			aURI = self class xmlnsNamespaceURI
				ifTrue: [prefixes add: 'xmlns']
				ifFalse: [
					self prefixesAndURIsDo: [:prefix :uri |
						uri = aURI
							ifTrue: [prefixes add: prefix]]]].
	^ prefixes.