tests
testSingleElementSelectsToEmpty
	self
		assert:
			(SCStream
				pairwiseSelectCollection: self singleElementCollection 
				withFunction: self differenceBiggerThanZero) isEmpty