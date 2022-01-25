as yet unclassified
initialize
	super initialize.
	autoConfigure := true.
	sp := FileSeparator separator.
	
	(((Smalltalk os isMacOS) or:(Smalltalk os isMacOSX))or:(Smalltalk os isUnix))
	ifTrue:[
		jsp := ':'.
		libraryFile := './System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Libraries/libclient.dylib'.
		].
	(Smalltalk os isWindows)
	ifTrue:[
		jsp := ';'.
		].
	
