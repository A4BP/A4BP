writer
writeWithOutChildrenOn: aWriter
	tagWriter:= parser writeXMLWithOutChildrenOn: aWriter.
	^ tagWriter