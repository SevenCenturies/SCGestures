as yet unclassified
pairCollector: arg1
	^ [ :arg2 :arg3 | 
	| tmp1 tmp2 |
	tmp1 := arg2 size.
	tmp1 > 1
		ifTrue: [ | tmp3 |
			arg2
				doWithIndex: [ :arg4 :arg5 | 
					arg5 < tmp1
						ifTrue: [ tmp3 := arg2 at: arg5 + 1.
							arg3 add: (arg1 value: arg4 value: tmp3) ] ] ] ]