parsing
parseScheme
	| scheme |

	scheme := self parseUpToAnyNotSkipping: ':/@?#'.
	(self parseNext: $:)
		ifTrue: [^ scheme asLowercase]
		ifFalse: [
			readStream reset.
			^ ''].