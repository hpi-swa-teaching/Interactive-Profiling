printing
printOnTallyTree: aTallyTree total: total totalTime: totalTime tallyExact: isExact 
	| aSelector className myTally aClass percentage |
	isExact 
		ifTrue: 
			[myTally := tally.
			receivers == nil 
				ifFalse: [receivers do: [:r | myTally := myTally - r tally]].
			aTallyTree
				value: myTally;
				space]
		ifFalse: 
			[percentage := tally asFloat / total * 100.0.
			aTallyTree 
				percentage: percentage;
				rootTime: totalTime].
	receivers == nil 
		ifTrue: 
			[aTallyTree value:
				aTallyTree value, 'primitives']
		ifFalse: 
			[aSelector := method selector.
			aClass := method methodClass.
			className := aClass name contractTo: self maxClassNameSize.
			blockNesting > 0 ifTrue:
				[aTallyTree blockNesting:  '[] '].
			aTallyTree 
				itemClass: aClass;
				itemSelector:  aSelector].