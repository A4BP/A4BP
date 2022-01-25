positioning
reset
	| oldPosition |

	oldPosition := stream position.
	stream reset.
	limit := limit + (oldPosition - stream position).