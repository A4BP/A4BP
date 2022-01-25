reflection
setUsingReflection: var obj: obj
	[ 
	| varName variable value tvariable |
	varName := var first asLowercase asString , (var last: var size - 1).
	variable := self instVarNamed: varName.
	value := obj.
		
	variable ifNil: [ ^ self instVarNamed: varName put: value ].
	
	variable class = Dictionary
		ifTrue: [ ^ variable at: value key put: value ].
		
	tvariable := Dictionary new.
	tvariable at: variable key put: variable.
	tvariable at: value key put: value.
	value := tvariable.
	self instVarNamed: varName put: value ]
		on: Error
		do: [ 
			"do nothing because the model dont support the tag "
			 ]