private
detectLittleEndianUTF32Or16BOM
	2 to: UTF32LittleEndianBOMBytes size do: [:i |
		self peek == (UTF32LittleEndianBOMBytes at: i)
			ifTrue: [self next]
			ifFalse: [
				i > 2
					ifTrue: [
						"the 2 byte UTF-16 BOM begins the 4 byte UTF-32 BOM:
							UTF32LittleEndianBOMBytes beginsWith:
								XMLUTF16LittleEndianStreamConverter byteOrderMarkBytes"
						stream position: startPosition + 2.
						^ XMLUTF16LittleEndianStreamConverter new]
					ifFalse: [
						self resetStreamToStartPosition.
						"no legal UTF-8 byte sequence begins with 16rFF, and:
							UTF32LittleEndianBOMBytes first = 16rFF
						so it can't be implicit UTF-8"
						^ nil]]].
	^ XMLUTF32LittleEndianStreamConverter new.