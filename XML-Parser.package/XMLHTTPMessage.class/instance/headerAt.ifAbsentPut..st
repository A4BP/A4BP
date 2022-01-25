accessing
headerAt: aKey ifAbsentPut: aBlock
	^ self
		headerAt: aKey
		ifAbsent: [
			self
				headerAt: aKey
				put: aBlock value]