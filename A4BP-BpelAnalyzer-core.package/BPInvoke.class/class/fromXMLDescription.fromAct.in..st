parser
fromXMLDescription:document fromAct: bpInvoke in:aBPObject
	"an secuence activity have a list of activities"
	super fromXMLDescription:document fromAct: bpInvoke in:aBPObject.
	"set the value of partnerLink"
	bpInvoke partnerLink: (self readString: document at: 'partnerLink').
	bpInvoke portType: (self readString: document at: 'portType').
	bpInvoke operation: (self readString: document at: 'operation').
	bpInvoke inputVariable: (self readString: document at: 'inputVariable').
	bpInvoke outputVariable: (self readString: document at: 'outputVariable').
	^ bpInvoke