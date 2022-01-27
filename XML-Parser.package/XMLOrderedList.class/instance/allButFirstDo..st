enumerating
allButFirstDo: aBlock
	"reimplemented for portability"
	2 to: self size do: [:i | aBlock value: (self at: i)]