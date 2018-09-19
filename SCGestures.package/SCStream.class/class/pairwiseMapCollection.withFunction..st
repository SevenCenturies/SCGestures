pairwise-streaming
pairwiseMapCollection: aCollection withFunction: aFunction
	
	| targetCollection |

	targetCollection := OrderedCollection new.
	(self pairwiseMapBlockForFunction: aFunction) value: aCollection value: targetCollection.
	^ targetCollection