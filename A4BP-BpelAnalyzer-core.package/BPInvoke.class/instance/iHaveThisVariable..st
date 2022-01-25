getset
iHaveThisVariable: stVariable
	"check if stVariable is part of their variables"

	^ inputVariable = stVariable | (outputVariable = stVariable)