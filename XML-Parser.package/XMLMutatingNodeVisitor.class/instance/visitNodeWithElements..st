visiting
visitNodeWithElements: aNodeWithElements
	aNodeWithElements hasChildren
		ifTrue: [| oldNodes nodeIndexesToRemove |
			oldNodes := aNodeWithElements nodes.
			1 to: oldNodes size do: [:i | | oldNode newNode |
				oldNode := oldNodes at: i.
				(newNode := oldNode acceptNodeVisitor: self) = oldNode
					ifFalse: [
						newNode
							ifNil: [
								"only initialize if needed"
								(nodeIndexesToRemove
									ifNil: [nodeIndexesToRemove := OrderedCollection new])
									addLast: i]
							ifNotNil: [
								"replace it"
								oldNodes
									at: i
									put: newNode]]].
			nodeIndexesToRemove
				ifNotNil: [
					nodeIndexesToRemove reverseDo: [:i |
						oldNodes removeAt: i]]].
	^ aNodeWithElements.