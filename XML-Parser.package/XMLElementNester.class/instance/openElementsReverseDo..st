enumerating
openElementsReverseDo: aBlock
	"reimplemented so it is always safe to remove at the end while scanning backwards"
	| i |

	i := self openElements size.
	[i > 0]
		whileTrue: [
			aBlock value: (self openElements at: i).
			i := i - 1].