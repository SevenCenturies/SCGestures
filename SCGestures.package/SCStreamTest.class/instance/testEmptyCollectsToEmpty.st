tests
testEmptyCollectsToEmpty
	self assert: (SCStream differentiate: self emptyCollection) isEmpty.