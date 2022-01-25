private
peekForUTF8LeadingByte
	| byte |

	((byte := self peek) notNil
		and: [self isUTF8LeadingByte: byte])
		ifTrue: [
			self next.
			^ true]
		ifFalse: [^ false]