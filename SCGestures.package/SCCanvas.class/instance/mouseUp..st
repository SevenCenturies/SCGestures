event handling
mouseUp: arg1
	| tmp2 |
	tmp2 := Transcript.
	tmp2
		show: 'Mouse up: ';
		show: arg1;
		cr.
	self
		shiftGesture;
		calculateAngles;
		changed