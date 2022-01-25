private
detectLittleEndianImplicitEncoding
	| implicitConverterClass |

	self detectsImplicitEncodings
		ifTrue: [
			implicitConverterClass :=
				self peekForNull
					ifTrue: [		
						(self peekForNull
							and: [self peekForNull])
							ifTrue: [
								"a leading ASCII char followed by three nulls;
								implicit little endian UTF-32"
								XMLImplicitUTF32LittleEndianStreamConverter]
							ifFalse: [
								"a leading ASCII char followed by just one null;
								implicit little endian UTF-16"
								XMLImplicitUTF16LittleEndianStreamConverter]]
					ifFalse: [
						"an ASCII char; assume it's UTF-8"
						XMLImplicitUTF8StreamConverter]].

	self resetStreamToStartPosition.
	^ implicitConverterClass
		ifNotNil: [implicitConverterClass new].