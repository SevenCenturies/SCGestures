as yet unclassified
calculateAngles: gesture
	| angles rtGrapher rtData decimated |
	decimated := SCStream select: gesture whenDistanceBiggerThan: 5. 
	angles := SCStream pairwiseMapCollection: decimated 
							 withFunction: [ :point :nextPoint | 
		| angle |
		  angle := (180 * (nextPoint - point) angle / Float pi roundTo: 1).
		  "angle < 0 ifTrue: [ angle := angle + 360. ]."
		angle ].
	angles := SCStream differentiate: angles.
		
	rtGrapher := RTGrapher new.
	rtData := RTData new.
	rtData dotShape color: Color blue.
	rtData points: angles.
	rtGrapher
		add: rtData;
		open