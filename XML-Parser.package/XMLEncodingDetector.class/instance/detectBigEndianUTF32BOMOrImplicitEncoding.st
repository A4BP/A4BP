private
detectBigEndianUTF32BOMOrImplicitEncoding
	2 to: UTF32BigEndianBOMBytes size do: [:i |
		self peek == (UTF32BigEndianBOMBytes at: i)
			ifTrue: [self next]
			ifFalse: [| implicitConverterClass |
				self detectsImplicitEncodings
					ifTrue: [
						i = 2
							ifTrue: [
								"(UTF32BigEndianBOMBytes at: 1) isZero"
								self peekForASCII
									ifTrue: [
										"null char followed by an ASCII char;
										implicit UTF-16 BE"
										implicitConverterClass :=
											XMLImplicitUTF16BigEndianStreamConverter]]
							ifFalse: [
								i = 3
									ifTrue: [
										"(UTF32BigEndianBOMBytes at: 2) isZero"
										(self peekForNull
											and: [self peekForASCII]) 
											ifTrue: [
												"three null chars followed by an ASCII char;
												implicit UTF-32 BE"
												implicitConverterClass :=
													XMLImplicitUTF32BigEndianStreamConverter]]].
						(implicitConverterClass isNil
							and: [self peekForUTF8LeadingByte])
							ifTrue: [
								"any number of null chars followed by a leading UTF-8
								byte char; implicit UTF-8"
								implicitConverterClass :=
									XMLImplicitUTF8StreamConverter]].
				self resetStreamToStartPosition.
				^ implicitConverterClass
					ifNotNil: [implicitConverterClass new]]].
	^ XMLUTF32BigEndianStreamConverter new.