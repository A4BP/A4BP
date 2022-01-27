private
validateName
	self usesNamespaces
		ifTrue: [
			self namespaceScope
				validateAndResolvePrefix: self prefix
				ofElement: self name]