builder
build: aObj message: aMsg
	| newObj |
	newObj := self new.
	newObj obj: aObj.
	newObj message: aMsg.
	^ newObj