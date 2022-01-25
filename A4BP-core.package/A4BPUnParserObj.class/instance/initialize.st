initialization
initialize
	super initialize.
	aName := 'Empty'.
	childrens := OrderedCollection new.
	id := UUID new asString