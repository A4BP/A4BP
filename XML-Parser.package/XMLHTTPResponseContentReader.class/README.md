This is an abstract base class for response content readers. The #readUpToLimit:decoding: message returns the entire  decoded (if enabled) response content, raising an XMLLimitException if it exceeds the specified limit.

Subclasses need to implement #rawReadWithLength:upToLimit: to read and return the raw response content and signal an error if it exceeds the limit.