tests
testSingleElementCollectsToEmpty
	self assert: (SCStream differentiate: self singleElementCollection) isEmpty.