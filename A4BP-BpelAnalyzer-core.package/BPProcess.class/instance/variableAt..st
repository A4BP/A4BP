getset
variableAt: aVariableName
	[ ^ variables lstVariables at: aVariableName ]
		on: KeyNotFound
		do: [ ^ A4BPEmptyObj instance ]