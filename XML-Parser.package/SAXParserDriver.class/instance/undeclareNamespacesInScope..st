private
undeclareNamespacesInScope: aScope
	| currentScope |

	currentScope := self scopeAllocator currentScope.
	aScope prefixesAndURIsDo: [:prefix :uri |
		(currentScope includesPrefix: prefix mappedTo: uri)
			ifFalse: [self saxHandler endPrefixMapping: prefix]].