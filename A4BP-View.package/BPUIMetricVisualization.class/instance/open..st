glamour-builder
open: model
	nodeOrganizer := model.
	self buildBrowser.
	(browser openOn: self organizer) maximize