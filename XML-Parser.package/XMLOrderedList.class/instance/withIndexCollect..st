enumerating
withIndexCollect: aTwoArgumentBlock
	| collected |

	collected := self species new: self size.
	1 to: self size do: [:i |
		collected addLast:
			(aTwoArgumentBlock
				value: (self at: i)
				value: i)].
	^ collected.