as yet unclassified
getContentsFromURL: url
	| response |
	response := ZnClient new
		url: url;
		get;
		response.
	^ response contents