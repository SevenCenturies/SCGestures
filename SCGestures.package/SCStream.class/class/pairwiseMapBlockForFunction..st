pairwise-streaming
pairwiseMapBlockForFunction: pairToValueFunction

"Returns a block that applies a pair-to-value function to the source collection and adds the results to the target collection."

	^ [ :sourceCollection :targetCollection | 
	| sourceCollectionSize |
	sourceCollectionSize := sourceCollection size.
	sourceCollectionSize > 1
		ifTrue: [
			sourceCollection
				doWithIndex: [ :element :index |
					| nextElement | 
					index < sourceCollectionSize
						ifTrue: [ nextElement := sourceCollection at: index + 1.
							targetCollection add: (pairToValueFunction value: element value: nextElement) ] ] ] ]