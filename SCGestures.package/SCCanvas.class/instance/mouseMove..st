event handling
mouseMove: arg1
	| tmp2 |
	tmp2 := Transcript.
	tmp2
		show: 'move';
		show: arg1 trail;
		cr.
	center := arg1 trail first - self position.
	arg1 trail do: [ :arg2 | self pushCoordinate: arg2 - self position ].
	self changed