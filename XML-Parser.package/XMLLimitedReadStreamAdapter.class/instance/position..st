positioning
position: anInteger
	| netPosition |

	(netPosition := anInteger - stream position) > limit
		ifTrue: [
			"skip as far ahead as allowed"
			self skip: limit]
		ifFalse: [
			limit := (limit - netPosition) max: 0.
			stream position: anInteger]