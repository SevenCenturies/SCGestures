tests
testEmptyCollectsToEmpty
	| collector sourceCollection targetCollection |
	collector := SCStream pairwiseDifferenciator.
	sourceCollection := self emptyCollection.
	targetCollection := self emptyCollection.
	collector value: sourceCollection value: targetCollection.
	self assert: targetCollection isEmpty.