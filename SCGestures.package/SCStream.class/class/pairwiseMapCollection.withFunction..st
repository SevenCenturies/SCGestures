pairwise-streaming
pairwiseMapCollection: aCollection withFunction: aFunction
	
	"Pairwise-maps the elements of aCollection applying the pair-to-value function and collects them in an OrderedCollection."
	
	| targetCollection |

	targetCollection := OrderedCollection new.
	(self pairwiseMapBlockForFunction: aFunction) value: aCollection value: targetCollection.
	^ targetCollection