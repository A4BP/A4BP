private
setFromDictionary: anOrderPreservingDictionary
	| association |

	"hack to reuse a dictionary for speed"
	attributesByName := anOrderPreservingDictionary dictionary.

	"add the XMLAttributes in order directly to the collection
	to avoid sending notifications and also replace the value in
	the attributesByName association with the XMLAttribute"
	anOrderPreservingDictionary keysDo: [:each |
		(association := attributesByName associationAt: each ifAbsent: nil)
			value:
				(collection addLast: 
					(self attributeClass new
						setName: each
						value: association value
						element: observer))].