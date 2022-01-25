getset
getRefOnTag: tag objClass: objclass
 	| instance |
	instance:= self new.
	instance tag:tag.
	instance objclass:objclass.
^ instance 