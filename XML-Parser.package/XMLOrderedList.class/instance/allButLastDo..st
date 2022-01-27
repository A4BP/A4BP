enumerating
allButLastDo: aBlock
	"reimplemented for portability"
	1 to: self size - 1 do: [:i | aBlock value: (self at: i)]