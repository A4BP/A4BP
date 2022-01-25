build
buildRelationsBpProcess: aRelBpProcess
	bpPartnerLink bpwsdl addCallRelation: aRelBpProcess.
	aRelBpProcess addRelation: ( bpPartnerLink bpwsdl). 