accessing
view: aView
	"Set the view in the context"
	self assert: [ aView isKindOf: RSCanvas ] description: 'Only a roassal view may be provided'.
	view := aView