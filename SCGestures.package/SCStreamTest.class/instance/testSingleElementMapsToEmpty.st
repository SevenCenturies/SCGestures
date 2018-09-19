tests
testSingleElementMapsToEmpty
	self assert: (SCStream differentiate: self singleElementCollection) isEmpty.