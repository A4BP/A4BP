relations
isARefOfWSDLPlnkType: awsdlplnkType
	| bov toMatch |
	"bov:=awsdlplnkType doYouHaveRoleNameAt: myRole."
	toMatch := '*' , awsdlplnkType aName  , '*'.
	bov := toMatch match: partnerLinkType.
	^ bov