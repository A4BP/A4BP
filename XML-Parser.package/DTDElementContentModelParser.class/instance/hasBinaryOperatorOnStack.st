private
hasBinaryOperatorOnStack
	^ binaryOperatorStack size > 0
		and: [binaryOperatorStack last ~~ $(]