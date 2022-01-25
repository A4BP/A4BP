config
buildErrorRes: value 
	"^ ZnResponse serverError: value"
	^ ZnResponse ok: (jsonEB value: value)