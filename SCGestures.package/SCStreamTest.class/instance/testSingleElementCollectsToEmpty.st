tests
testSingleElementCollectsToEmpty
	| collector sourceCollection targetCollection |
	collector := SCStream pairCollector: SCStream left.
	sourceCollection := self emptyCollection.
	targetCollection := self emptyCollection.
	sourceCollection add: 1.
	collector value: sourceCollection value: targetCollection.
	self assert: targetCollection isEmpty.