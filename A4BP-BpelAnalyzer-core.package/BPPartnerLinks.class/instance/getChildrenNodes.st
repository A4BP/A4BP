getset
getChildrenNodes
	| nodes |
	nodes := OrderedCollection new.
	nodes addAll: lstPartnerLinks.
	^ nodes