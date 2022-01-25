removing
removeHeaders
	self headerKeys do: [:each |
		self
			removeHeaderAt: each
			ifAbsent: []]