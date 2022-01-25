as yet unclassified
exampleConfig
	"self exampleConfig"
| jvmSettings |
 "You can set the path to the Java VM library by editing the path as
needed."
JNIPortJNIInterface libraryFile: self libraryFile.
"JNIPortJNIInterface libraryFile:
'C:\Programme\Java\jre7\bin\client\jvm.dll' ."

 jvmSettings := JVMSettings new.
 jvmSettings usesGhosts: true.
 jvmSettings supportsCallbacks: true.
 jvmSettings jniPortSettings  useJNIHelperLibrary: false.
jvmSettings ghostClassSettings retainMethodSource: true.

 "On Mac OS X and Linux, class path entries are separated by colons."
 "On Windows, you have to use semicolons instead. Edit the following line as
needed."
jvmSettings runtimeSettings classpath: ('.;.\JNIPort.jar;.\JNIPort-Tests.jar:' ,  self jbpmsimjavaPath).
" jvmSettings runtimeSettings classpath:
'.;.\JNIPort.jar;.\JNIPort-Tests.jar'."

 "Uncomment the following if you want the Java VM to emit verbose messages.
  How to access these messages depends on your platform.
  On Mac OS X, they are visible in the Console application."
jvmSettings runtimeSettings addOption: '-verbose:jni'; addOption:'-verbose:gc'; addOption: '-verbose:class'.
Cursor execute showWhile: [JVM newWithSettings: jvmSettings].


