action
addSOAContext: aSOAContext
	lstSOAContext at: aSOAContext key put: aSOAContext.
	aSOAContext parent: self.