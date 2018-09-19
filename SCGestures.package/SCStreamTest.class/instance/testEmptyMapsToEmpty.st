tests
testEmptyMapsToEmpty
	self assert: (SCStream differentiate: self emptyCollection) isEmpty.