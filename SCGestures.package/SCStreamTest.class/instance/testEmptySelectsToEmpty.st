tests
testEmptySelectsToEmpty
	self
		assert:
			(SCStream
				pairwiseSelectCollection: self emptyCollection
				withFunction: self differenceBiggerThanZero) isEmpty