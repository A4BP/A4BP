private
contentReadStreamUpToEnd
	| contentWriteStream |

	contentWriteStream := self newContentWriteStream.
	[contentReadStream atEnd]
		whileFalse: [contentWriteStream nextPut: contentReadStream next].
	^ contentWriteStream contents.