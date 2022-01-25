external-operation
saveInDisk
	"Save the process in the external file"

	self fullPath
		ifNotNil: [ 
			| aStream xmlWriter |
			xmlWriter := XMLWriter new.
			aStream := FileStream oldFileNamed: self fullPath.
			myDocument writeOn: xmlWriter.
			xmlWriter printOn: aStream.
			aStream close ]