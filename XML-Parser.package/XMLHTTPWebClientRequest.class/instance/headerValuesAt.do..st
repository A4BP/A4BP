enumerating
headerValuesAt: aKey do: aBlock
	self webClientRequest
		headersAt: aKey
		do: aBlock