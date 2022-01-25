as yet unclassified
unzipContentIn: aDirectory with: contents
	| archive |
	archive := ZipArchive new.
	archive readFrom: contents readStream.
	archive extractAllTo: aDirectory