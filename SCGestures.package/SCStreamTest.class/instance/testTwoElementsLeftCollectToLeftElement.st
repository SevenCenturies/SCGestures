tests
testTwoElementsLeftCollectToLeftElement
	| collector sourceCollection targetCollection |
	collector := SCStream left.
	sourceCollection := self emptyCollection.
	targetCollection := self emptyCollection.
	sourceCollection add: 1; add: 2.
	collector value: sourceCollection value: targetCollection.
	self assert: (targetCollection size) = 1.
	self assert: (targetCollection at: 1) = 1.