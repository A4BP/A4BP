combining
combineSourceURI: aSourceURI withEntityURI: anEntityURI
	| sourceURI combinedURI |

	sourceURI := aSourceURI asXMLURI.
	combinedURI := sourceURI / anEntityURI.
	(combinedURI isLocalURI
		and: [sourceURI isLocalURI not
			and: [self resolvesLocalFromNonLocal notNil
				and: [self resolvesLocalFromNonLocal not]]])
		ifTrue: [self errorLocalFromNonLocal].

	^ combinedURI.