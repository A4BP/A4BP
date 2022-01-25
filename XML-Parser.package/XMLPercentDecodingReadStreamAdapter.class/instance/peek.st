accessing
peek
	| byte |

	stream atEnd
		ifFalse: [| oldPosition |
			oldPosition := stream position.
			byte := self next.
			stream position: oldPosition].
	^ byte.