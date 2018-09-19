pairwise-streaming
pairwiseSelectCollection: aCollection withFunction: aFunction
	
	"Pairwise-selects the elements of aCollection applying the pair-to-Boolean function and collects them in an OrderedCollection."
	
	| targetCollection |

	targetCollection := OrderedCollection new.
	(self pairwiseSelectBlockForFunction: aFunction) value: aCollection value: targetCollection.
	^ targetCollection