private
renameWith: aBlock
	| oldName |

	oldName := self name.
	aBlock value.
	self name = oldName
		ifFalse: [
			self validateName.
			self hasParent
				ifTrue: [
					self parent
						renamedElement: self
						from: oldName
						to: self name]].