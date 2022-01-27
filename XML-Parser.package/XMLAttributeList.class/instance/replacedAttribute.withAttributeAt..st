private
replacedAttribute: anAttribute withAttributeAt: anIndex
	| i |

	(i :=
		self
			indexOf: anAttribute
			otherThan: anIndex) > 0
		ifTrue: [self removeAt: i]