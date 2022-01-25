find
variableAt: aVariableName
	[ ^ variables lstVariables at: aVariableName ]
		on: Error
		do: [ ^ A4BPEmptyObj instance ]