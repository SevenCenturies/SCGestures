as yet unclassified
differentiate: aCollection
	
	^ self pairwiseMapCollection: aCollection withFunction: (self differenceFunction) 