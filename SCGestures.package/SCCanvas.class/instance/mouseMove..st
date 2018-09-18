event handling
mouseMove: aMouseEvent
	Transcript show: 'move';
		show: aMouseEvent trail;
		cr.
	center := aMouseEvent trail first - self position.
	aMouseEvent trail do: [ :point | self pushPoint: point - self position ].
	self changed