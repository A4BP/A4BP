config
buildRes: value ctype: type
	|znEntity|
	znEntity := (jsonEB value: value).
	znEntity contentType: type.
	^ ZnResponse ok: znEntity.