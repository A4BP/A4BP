accessing
unmapPrefix: aPrefix
	"copy-on-write"
	^ self copiedPrefixMappings 
		removeKey: aPrefix
		ifAbsent: [
			XMLNamespaceException
				formatSignal: 'Prefix "{1}" was not mapped and cannot be unmapped'
				with: aPrefix]