event handling
mouseDown: arg1
	arg1 redButtonPressed
		ifTrue: [ | tmp2 |
			tmp2 := Transcript.
			tmp2
				show: 'Red button';
				cr ].
	arg1 yellowButtonPressed
		ifTrue: [ | tmp4 |
			tmp4 := Transcript.
			tmp4
				show: 'Yellow button';
				cr ].
	arg1 blueButtonPressed
		ifTrue: [ | tmp6 |
			tmp6 := Transcript.
			tmp6
				show: 'Blue button';
				cr ].
	self changed