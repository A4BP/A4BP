private
peekForUTF8NonLeadingByte
	| byte |

	((byte := self peek) notNil
		and: [byte < 16rC0
			and: [byte > 16r80]])
		ifTrue: [
			self next.
			^ true]
		ifFalse: [^ false]