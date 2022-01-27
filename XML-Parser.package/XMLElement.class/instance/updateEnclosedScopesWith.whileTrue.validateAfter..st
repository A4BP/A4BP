private
updateEnclosedScopesWith: aBlock whileTrue: aConditionalBlock validateAfter: aBoolean
	"Updates the receiver's scope and the scopes of all descendants with aBlock
	where aConditional is true. It stops descending down a path of a subtree
	as soon as aConditional is false, but continues down other paths."

	(aConditionalBlock value: self namespaceScope)
		ifFalse: [^ self].

	aBlock value: self namespaceScope.
	aBoolean
		ifTrue: [
			self
				validateName;
				validateAttributes].
	self elementsDo: [:each |
		each
			updateEnclosedScopesWith: aBlock
			whileTrue: aConditionalBlock
			validateAfter: aBoolean]