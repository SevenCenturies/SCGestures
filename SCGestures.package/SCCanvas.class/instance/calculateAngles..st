as yet unclassified
calculateAngles: gesture
	| angles grapher data collector |
	angles := OrderedCollection new.
	collector := SCStream pairwiseMapper: [ :point :nextPoint | 
		| angle |
		  angle := (180 * (nextPoint - point) angle / Float pi roundTo: 15).
		angle < 0 ifTrue: [
			angle := angle + 360.
			].
		angle ].
	collector value: gesture value: angles.
	grapher := RTGrapher new.
	data := RTData new.
	data dotShape color: Color blue.
	data points: angles.
	grapher
		add: data;
		open