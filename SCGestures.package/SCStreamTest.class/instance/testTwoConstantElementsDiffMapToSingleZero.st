tests
testTwoConstantElementsDiffMapToSingleZero
	| difference |
	difference := SCStream differentiate: self twoConstantElementsCollection.
	self assert: (difference size) = 1.
	self assert: (difference at: 1) = 0.