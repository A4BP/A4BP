parsing
parseUserInfo
	| userInfo oldPosition |

	oldPosition := readStream position.
	userInfo := self nextDelimitedByAny: UserInfoDelimiters.
	(readStream peekFor: $@)
		ifTrue: [^ userInfo]
		ifFalse: [
			readStream position: oldPosition.
			^ ''].