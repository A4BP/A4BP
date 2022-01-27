enumerating
with: aCollection collect: aBlock
	| collected |

	collected := self species new: self size.
	1 to: (self size min: aCollection size) do: [:i |
		collected addLast:
			(aBlock
				value: (self at: i)
				value: (aCollection at: i))].
	^ collected.