setup
setUp
	A4BPMainServer start.
	client := ZnClient new
	url: 'http://localhost:', A4BPMainServer instance port asString;
	accept: ZnMimeType applicationJson;
	yourself.