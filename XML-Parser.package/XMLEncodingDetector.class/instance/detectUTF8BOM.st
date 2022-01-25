private
detectUTF8BOM
	2 to: UTF8BOMBytes size do: [:i |
		self peek == (UTF8BOMBytes at: i)
			ifTrue: [self next]
			ifFalse: [| implicitConverter |
				(self detectsImplicitEncodings
					and: [self peekForUTF8NonLeadingByte])
					ifTrue: [implicitConverter := XMLImplicitUTF8StreamConverter new].
				self resetStreamToStartPosition.
				^ implicitConverter]].
	^ XMLUTF8StreamConverter new.