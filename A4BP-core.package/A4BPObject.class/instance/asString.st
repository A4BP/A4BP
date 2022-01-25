getset
asString
	"
	^ aName , '[', self hash asString,'],',super asString.
	"
	^ self aName