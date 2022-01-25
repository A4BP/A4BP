initialization
on: aStringOrStream
	readStream :=
		XMLReadStreamAdapter on:
			(aStringOrStream isStream
				ifTrue: [aStringOrStream]
				ifFalse: [aStringOrStream readStream]).
	writeStream := (String new: 64) writeStream.