as yet unclassified
fromXMLDescription: docAtr in: parent
	"The argument is a complete description of an XML process"

	| newplnk |
	"is an instante of on BPPartnerLink"
	newplnk := self new.
	self fillBData: docAtr in: newplnk.
	newplnk parent: parent.
	newplnk aName: (docAtr attributeAt: 'name').
	newplnk partnerLinkType: (docAtr attributeAt: 'partnerLinkType').
	newplnk partnerRole: (docAtr attributeAt: 'partnerRole').
	newplnk myRole: (docAtr attributeAt: 'myRole').
	^ newplnk