left-to-right-streaming
leftBasedSelector: leftToRightSelectFunction
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
							targetCollection add: (leftToRightSelectFunction value: element value: nextElement) ] ] ] ]