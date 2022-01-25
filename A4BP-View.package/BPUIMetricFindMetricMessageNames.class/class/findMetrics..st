as yet unclassified
findMetrics: aClass
  ^ aClass allSelectors
		select: [ :k | 
			(k endsWith: ':') not and: [ 
				((k beginsWith: #number) 
				or: [ k beginsWith: #calculate ]) 
				or: [ k beginsWith: #metric ] 
				] 
			].