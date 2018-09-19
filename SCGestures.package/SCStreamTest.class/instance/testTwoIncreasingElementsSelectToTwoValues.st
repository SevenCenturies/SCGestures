tests
testTwoIncreasingElementsSelectToTwoValues
	| selection |
	selection := SCStream
				pairwiseSelectCollection: self twoIncreasingElementsCollection   
				withFunction: self differenceBiggerThanZero.
	self assert: (selection size) = 2.
	self assert: (selection at: 1) = 1.
	self assert: (selection at: 2) = 2.