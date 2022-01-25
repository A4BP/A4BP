all
allWSDLs
	|lst|
	lst := self allPartnerLinks collect:[ :plk |  plk bpwsdl]. 
	^ lst