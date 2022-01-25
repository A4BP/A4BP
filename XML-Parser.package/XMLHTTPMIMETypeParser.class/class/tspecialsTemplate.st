private
tspecialsTemplate
	^ '	tspecials :=  "(" / ")" / "<" / ">" / "@"  ; Must be in
                       /  "," / ";" / ":" / "\" / <">  ; quoted-string,
                       /  "/" / "[" / "]" / "?" / "."  ; to use within
                       /  "="                        ; parameter values'