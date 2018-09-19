as yet unclassified
calculateAngles: gesture
	| angles rtGrapher rtData  |
	angles := SCStream pairwiseMapCollection: gesture 
							 withFunction: [ :point :nextPoint | 
		| angle |
		  angle := (180 * (nextPoint - point) angle / Float pi roundTo: 15).
		  angle < 0 ifTrue: [ angle := angle + 360. ].
		angle ].
	"angles := SCStream differentiate: angles."
	rtGrapher := RTGrapher new.
	rtData := RTData new.
	rtData dotShape color: Color blue.
	rtData points: angles.
	rtGrapher
		add: rtData;
		open