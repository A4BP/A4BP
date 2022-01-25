singleton
instance
	"Mark as a default the english language"
	instance ifNil: [ instance := A4BPUII18n_en new ].
	^ instance