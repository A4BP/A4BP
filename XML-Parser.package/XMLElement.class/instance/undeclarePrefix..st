namespacing
undeclarePrefix: aPrefix
	| currentMapping |

	currentMapping := self namespaceScope prefixMappingAt: aPrefix ifAbsent: [^ self].
	self
		updateEnclosedScopesWith: [:scope | scope unmapPrefix: aPrefix]
		whileTrue: [:scope | scope includesPrefix: aPrefix mappedTo: currentMapping]
		validateAfter: true.