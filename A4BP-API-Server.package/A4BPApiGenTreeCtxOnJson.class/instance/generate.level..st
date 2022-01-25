generate
generate: aModel level: level
	sbjson := ''.
	[
		sbclose := ']}]}'.
		nodekey := 0.
		sbjson := '{"children":[{',(self genid:aModel),',"name":"', aModel name ,'","children":['.
		self genNodes: aModel level:level alevel:0.
		sbjson := sbjson , sbclose.
	] on: Error do:[ :e | 
		sbjson := sbjson , sbclose.
		sbjson := sbjson, 'ERROR:{',e messageText asString,'}'.
	].