accessing
contentType
	"Returns an XMLMIMEType object for the Content-Type header value"

	^ XMLHTTPMIMEType fromString:
		(self
			headerAt: 'Content-Type'
			ifAbsent: [^ nil])