private
isUTF8LeadingByte: aByte
	^ aByte < 16r80
		or: [aByte < 16rF8
			and: [(aByte bitAnd: 16rE0) == 16rC0
				or: [(aByte bitAnd: 16rF0) == 16rE0
					or: [(aByte bitAnd: 16rF8) == 16rF0]]]]