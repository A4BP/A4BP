as yet unclassified
startJava
	"self startJava"
	| settings jconfig |
	JVM current ifNotNil:[^ JVM current].
	jconfig := self.
	settings := JVMSettings new.
	settings usesGhosts: true.
	(settings jniPortSettings)
    	jvmClass: JVMWithCallbacks;
    	jniLibraryFilename: jconfig libraryFile.
	settings runtimeSettings classpath: jconfig loadClassPath. 
	settings runtimeSettings 
	addOption: '-verbose:jni'; 
	addOption:'-verbose:gc'; 
	addOption: '-verbose:class';
	addOption: '-Xdebug';
	addOption: '-Xrunjdwp:server=y,transport=dt_socket,address=4000,suspend=n'.
	JVM shutDown.
	Cursor execute showWhile: [JVM newWithSettings: settings].
	^ JVM current
 
