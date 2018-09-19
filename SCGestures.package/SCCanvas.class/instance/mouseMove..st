event handling
mouseMove: aMouseEvent
	Transcript show: 'move';
		show: aMouseEvent trail;
		cr.
	aMouseEvent trail do: [ :point | self pushPoint: point - self position ].
	self changed