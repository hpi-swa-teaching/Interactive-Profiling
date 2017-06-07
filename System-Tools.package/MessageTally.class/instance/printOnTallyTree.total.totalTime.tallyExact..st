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
			aTallyTree value: aTallyTree value, (percentage printShowingDecimalPlaces: 1), '% {',  (percentage * totalTime / 100) rounded, 'ms} '].
	receivers == nil 
		ifTrue: 
			[aTallyTree value:
				aTallyTree value, 'primitives']
		ifFalse: 
			[aSelector := method selector.
			aClass := method methodClass.
			className := aClass name contractTo: self maxClassNameSize.
			blockNesting > 0 ifTrue:
				[aTallyTree value: aTallyTree value, '[] '].
			aTallyTree 
				class: aClass;
				method: aSelector;
				value: aTallyTree value,  class name, (aClass = class ifTrue: ['>>'] ifFalse: ['(' , aClass name , ')>>']), (aSelector contractTo: self maxClassPlusSelectorSize - className size)].