accessing
doAutoConfigure
	"Use this method to download all bin .jar packages necesaries to execute the software"
	BPSimResourceDownload downloadAndUnzipA4BP_LIB.
	self basePathDir: ( FileSystem disk workingDirectory fullName , FileSeparator separator ,'A4BP_LIB').
	self autoConfigure: true.
