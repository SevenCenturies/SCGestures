drawing
render
	surface
		drawDuring: [ :arg1 | 
			arg1 pathTransform loadIdentity.
			surface clear.
			currentGesture size > 2
				ifTrue: [ currentGesture
						doWithIndex: [ :arg2 :arg3 | 
							arg3 < currentGesture size
								ifTrue: [ | tmp2 |
									tmp2 := arg1.
									tmp2
										setStrokePaint: Color white;
										drawShape:
											(AthensLine
												from: (currentGesture at: arg3)
												to: (currentGesture at: arg3 + 1)) ] ] ] ]