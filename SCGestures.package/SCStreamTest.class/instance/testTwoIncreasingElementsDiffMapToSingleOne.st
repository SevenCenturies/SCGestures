tests
testTwoIncreasingElementsDiffMapToSingleOne
	| difference |
	difference := SCStream differentiate: self twoIncreasingElementsCollection.
	self assert: (difference size) = 1.
	self assert: (difference at: 1) = 1.