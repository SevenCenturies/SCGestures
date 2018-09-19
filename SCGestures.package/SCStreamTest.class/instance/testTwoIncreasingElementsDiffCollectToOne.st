tests
testTwoIncreasingElementsDiffCollectToOne
	| difference |
	difference := SCStream differentiate: self increasingElementsCollection.
	self assert: (difference size) = 1.
	self assert: (difference at: 1) = 1.