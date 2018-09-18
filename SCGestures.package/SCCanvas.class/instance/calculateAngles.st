as yet unclassified
calculateAngles
	| tmp1 tmp2 tmp3 tmp4 |
	tmp1 := OrderedCollection new.
	tmp4 := lastGesture size.
	tmp4 > 2
		ifTrue: [ lastGesture
				doWithIndex: [ :arg1 :arg2 | 
					| tmp5 |
					arg2 < tmp4
						ifTrue: [ tmp5 := lastGesture at: arg2 + 1.
							tmp1 add: (180 * (tmp5 - arg1) angle / Float pi roundTo: 15) ] ] ].
	tmp2 := RTGrapher new.
	tmp3 := RTData new.
	tmp3 dotShape color: Color blue.
	tmp3 points: tmp1.
	tmp2
		add: tmp3;
		open