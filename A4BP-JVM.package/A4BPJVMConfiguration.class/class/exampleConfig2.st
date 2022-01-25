as yet unclassified
exampleConfig2
"Then the fun starts:"
| zfClass zipfile entries |
zfClass := JVM current findClass: #'java.util.zip.ZipFile'.
zipfile := zfClass new_String: 'JNIPort.jar'.
zipfile size. "--> answers an Integer"
entries := zipfile entries.
entries asAnEnumeration do: [:each | Transcript cr; print: each].