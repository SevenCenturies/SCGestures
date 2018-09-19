tests
testTwoConstantElementsDiffCollectToZero
	| difference |
	difference := SCStream differentiate: self constantElementsCollection.
	self assert: (difference size) = 1.
	self assert: (difference at: 1) = 0.