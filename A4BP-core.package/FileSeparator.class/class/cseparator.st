as yet unclassified
cseparator
	cseparator ifNil:[ 
		(((Smalltalk os isMacOS) or:(Smalltalk os isMacOSX))or:(Smalltalk os isUnix))
		ifTrue:[
			cseparator := $/.
			].
		(Smalltalk os isWindows)
		ifTrue:[
			cseparator := $\.
			].
	].
	
	^ cseparator