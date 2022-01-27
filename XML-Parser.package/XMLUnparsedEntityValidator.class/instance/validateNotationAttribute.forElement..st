validating
validateNotationAttribute: anAttribute forElement: anElement
	| oldSize |

	"checking size after is faster than includes"
	oldSize := self elementsAndNotationAttributes size.
	(self elementsAndNotationAttributes
		at: anElement
		put: anAttribute;
		size) > oldSize
		ifFalse: [self errorMultipleNotationAttributesForElement: anElement].