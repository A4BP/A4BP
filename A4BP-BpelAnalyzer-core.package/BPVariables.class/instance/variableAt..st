find
variableAt: aVariableName
	[ ^ lstVariables at: aVariableName ]
		on: Error
		do: [ ^ A4BPEmptyObj instance ]