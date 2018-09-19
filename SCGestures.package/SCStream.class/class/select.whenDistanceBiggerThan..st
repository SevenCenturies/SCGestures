as yet unclassified
select: aCollection whenDistanceBiggerThan: distance
	
	^ self pairwiseSelectCollection: aCollection withFunction: ([ :pointA :pointB | (pointA distanceTo: pointB) > distance]) 