tests
testTwoConstantElementsDiffCollectToZero
	| collector sourceCollection targetCollection |
	collector := SCStream difference.
	sourceCollection := self emptyCollection.
	targetCollection := self emptyCollection.
	sourceCollection add: 1; add: 1.
	collector value: sourceCollection value: targetCollection.
	self assert: (targetCollection size) = 1.
	self assert: (targetCollection at: 1) = 0.