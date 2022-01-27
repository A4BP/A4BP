enumerating
with: aCollection do: aBlock
	1 to: (self size min: aCollection size) do: [:i |
		(aBlock
			value: (self at: i)
			value: (aCollection at: i))]