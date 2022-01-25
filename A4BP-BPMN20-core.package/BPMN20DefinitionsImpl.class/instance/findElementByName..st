finder
findElementByName: anName
	"use select because the dictionary the key is the id no the name"

	[ 
	| el |
	el := (elementsDictionary values select: [ :e | e aName = anName ]) first.
	^ el ]
		on: Error
		do: [ :e | 
			^ A4BPEmptyObj instance ]