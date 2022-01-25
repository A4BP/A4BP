private
detectBigEndianUTF16BOM
	2 to: UTF16BigEndianBOMBytes size do: [:i |
		self next == (UTF16BigEndianBOMBytes at: i)
			ifFalse: [
				self resetStreamToStartPosition.
				"no legal UTF-8 byte sequence begins with 16rFE, and:
					UTF16BigEndianBOMBytes first = 16rFE
				so it can't be implicit UTF-8"
				^ nil]].
	^ XMLUTF16BigEndianStreamConverter new.