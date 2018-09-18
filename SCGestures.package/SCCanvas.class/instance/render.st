drawing
render
	surface
		drawDuring: [ :aCanvas | 
			aCanvas pathTransform loadIdentity.
			surface clear.
			currentGesture size > 2
				ifTrue: [ currentGesture
						doWithIndex: [ :point :index | 
							index < currentGesture size
								ifTrue: [
									aCanvas
										setStrokePaint: Color white;
										drawShape:
											(AthensLine
												from: (currentGesture at: index)
												to: (currentGesture at: index + 1)) ] ] ] ]