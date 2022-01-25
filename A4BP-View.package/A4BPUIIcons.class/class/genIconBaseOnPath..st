generator
genIconBaseOnPath: aFullPath
	| image stream sbgen |
	sbgen := ''.
	image := ColorForm fromFileNamed: aFullPath.
	stream := WriteStream with: String new.
	image storeOn: stream.
	sbgen := '
	self icons
		at: #putIconKey ifAbsentPut: [' , stream contents asString , ']'.
	^ sbgen.
	