private
validatePrefix: aPrefix beforeMappingTo: aURI
	aPrefix = 'xml'
		ifTrue: [
			aURI = self class xmlNamespaceURI
				ifFalse: [self errorCannotRemapXMLPrefix]]
		ifFalse: [
			aPrefix isEmpty "avoid ifEmpty: overhead"
				ifFalse: [
					aPrefix = 'xmlns'
						ifTrue: [self errorCannotMapXMLNSPrefix].
					(aPrefix indexOf: $:) > 0 
						ifTrue: [self errorInvalidPrefix: aPrefix].
					aURI isEmpty
						ifTrue: [self errorCannotMapPrefixToEmptyURI]].
			(aURI = self class xmlNamespaceURI
				or: [aURI = self class xmlnsNamespaceURI])
				ifTrue: [self errorCannotAliasXMLOrXMLNSWithPrefix: aPrefix]]