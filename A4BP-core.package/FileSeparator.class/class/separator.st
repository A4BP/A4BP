as yet unclassified
separator
	separator ifNil:[ 
		(((Smalltalk os isMacOS) or:(Smalltalk os isMacOSX))or:(Smalltalk os isUnix))
		ifTrue:[
			separator := '/'.
			cseparator := $/.
			].
		(Smalltalk os isWindows)
		ifTrue:[
			separator := '\'.
			cseparator := $\.
			].
	].
	
	^ separator