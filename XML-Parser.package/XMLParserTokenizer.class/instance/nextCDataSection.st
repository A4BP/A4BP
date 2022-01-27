tokenizing
nextCDataSection
	self expectNextAll: '[CDATA['.

	driver handleCData: (self expectUpToAll: ']]>').
