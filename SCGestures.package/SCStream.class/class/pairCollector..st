collections-streaming
pairCollector: pairToValueCollector
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
							targetCollection add: (pairToValueCollector value: element value: nextElement) ] ] ] ]