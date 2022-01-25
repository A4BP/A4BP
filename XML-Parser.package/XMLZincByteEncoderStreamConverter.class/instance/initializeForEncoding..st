initialization
initializeForEncoding: anEncodingName
	zincByteEncoder :=
		(XMLClassFinder classNamed: #ZnByteEncoder) newForEncoding: anEncodingName.

	"we use an XMLStringReadStreamAdapter to transparently handle non-binary
	character streams for ZnByteEncoder, which exepcts binary streams, and
	since it's only ever set to a non-null stream during #nextFromStream:,
	instances can still be shared by multiple streams, just not re-entrently,
	which is OK since this class is explicitly stateful and so not
	automatically thread-safe."
	stringReadStreamAdapter :=
		XMLStringReadStreamAdapter on: NullReadStream.