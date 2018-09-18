event handling
mouseDown: aMouseEvent
	aMouseEvent redButtonPressed
		ifTrue: [
			Transcript 
				show: 'Red button';
				cr ].
	aMouseEvent yellowButtonPressed
		ifTrue: [ Transcript
				show: 'Yellow button';
				cr ].
	aMouseEvent blueButtonPressed
		ifTrue: [ Transcript
				show: 'Blue button';
				cr ].
	self changed