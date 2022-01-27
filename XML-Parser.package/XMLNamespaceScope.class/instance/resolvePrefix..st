resolving
resolvePrefix: aPrefix
	"resolve namespace from prefix"
	^ self
		resolvePrefix: aPrefix
		ifUnresolvable: ''