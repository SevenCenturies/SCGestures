as yet unclassified
calculateAngles
	| angles grapher data gestureSize |
	angles := OrderedCollection new.
	gestureSize := lastGesture size.
	gestureSize > 1
		ifTrue: [ lastGesture
				doWithIndex: [ :point :index | 
					| nextPoint |
					index < gestureSize
						ifTrue: [ nextPoint := lastGesture at: index + 1.
							angles add: (180 * (nextPoint - point) angle / Float pi roundTo: 15) ] ] ].
	grapher := RTGrapher new.
	data := RTData new.
	data dotShape color: Color blue.
	data points: angles.
	grapher
		add: data;
		open