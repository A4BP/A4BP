private
peekForASCII
	| byte |

	((byte := self peek) notNil
		and: [byte < 16r80])
		ifTrue: [
			self next.
			^ true]
		ifFalse: [^ false]