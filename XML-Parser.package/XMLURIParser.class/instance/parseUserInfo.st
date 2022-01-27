parsing
parseUserInfo
	| userInfo oldPosition |

	oldPosition := readStream position.
	userInfo := self parseUpToAnyNotSkipping: ':/@?#'.
	(self parseNext: $@)
		ifTrue: [^ userInfo]
		ifFalse: [
			readStream position: oldPosition.
			^ ''].