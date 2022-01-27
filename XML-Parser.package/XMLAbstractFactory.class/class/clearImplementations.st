private
clearImplementations
	"self clearImplementations"

	self allSubclassesDo: [:each | each implementation: nil]