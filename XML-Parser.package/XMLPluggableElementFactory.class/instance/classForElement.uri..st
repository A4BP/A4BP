private
classForElement: aName uri: aURI
	| classesForElement |

	classesForElement :=
		self elementClassesByName
			at: aName
			ifAbsent: [^ nil].

	^ classesForElement
		at: aURI
		ifAbsent: [
			classesForElement
				at: ''
				ifAbsent: [nil]].