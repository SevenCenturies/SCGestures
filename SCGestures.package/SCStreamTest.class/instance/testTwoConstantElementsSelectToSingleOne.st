tests
testTwoConstantElementsSelectToSingleOne
	| selection |
	selection := SCStream
				pairwiseSelectCollection: self twoConstantElementsCollection  
				withFunction: self differenceBiggerThanZero.
	self assert: (selection size) = 1.
	self assert: (selection at: 1) = 1.