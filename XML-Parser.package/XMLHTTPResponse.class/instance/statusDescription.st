accessing
statusDescription
	| delimiter |

	delimiter := Character space.
	^ (self statusLine copyAfter: delimiter)
		copyAfter: delimiter