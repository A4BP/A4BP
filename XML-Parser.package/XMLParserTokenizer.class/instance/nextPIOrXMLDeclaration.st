tokenizing
nextPIOrXMLDeclaration
	| target |

	streamReader next.
	(target := self nextPITarget) = 'xml'
		ifTrue: [^ self nextXMLDeclaration].

	context := context prologContext.
	self nextPIWithTarget: target.