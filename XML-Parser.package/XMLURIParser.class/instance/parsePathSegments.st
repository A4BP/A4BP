parsing
parsePathSegments
	| pathSegments segment |

	pathSegments := OrderedCollection new.

	segment := self nextDelimitedByAny: PathDelimiters.
	[readStream peekFor: $/]
		whileTrue: [
			pathSegments addLast: segment.
			segment := self nextDelimitedByAny: PathDelimiters].
	(pathSegments isEmpty
		and: [segment isEmpty])
		ifFalse: [pathSegments addLast: segment].

	^ pathSegments.