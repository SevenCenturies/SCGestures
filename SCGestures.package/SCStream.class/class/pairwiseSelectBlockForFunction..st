pairwise-streaming
pairwiseSelectBlockForFunction: selectFunction

"Returns a block that applies a pair-to-Boolean select function to the source collection and selectively adds the elements from the source collection to the target collection."

	^ [ :sourceCollection :targetCollection | 
	| sourceCollectionSize currentReference |
	sourceCollectionSize := sourceCollection size.
	sourceCollectionSize > 1
		ifTrue: [
			currentReference := sourceCollection at: 1.
			targetCollection add: currentReference.
			sourceCollection 
				doWithIndex: [ :element :index |
					| nextElement | 
					index < sourceCollectionSize
						ifTrue: [ nextElement := sourceCollection at: index + 1.
							(selectFunction value: currentReference value: nextElement) ifTrue: [ 
								currentReference := nextElement.
								targetCollection add: currentReference. ].
						]
			   ]
		] 
	]