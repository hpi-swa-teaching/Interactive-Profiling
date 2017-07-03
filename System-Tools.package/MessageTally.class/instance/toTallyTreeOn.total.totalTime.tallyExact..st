printing
toTallyTreeOn: aTallyTree total: total totalTime: totalTime tallyExact: isExact 
	| aSelector className myTally aClass percentage |
	isExact 
		ifTrue: 
			[myTally := tally.
			receivers == nil 
				ifFalse: [receivers do: [:r | myTally := myTally - r tally]].
			aTallyTree
				value: myTally]
		ifFalse: 
			[percentage := tally asFloat / total * 100.0.
			aTallyTree
				rootTime: totalTime;
				percentage: percentage].
	receivers == nil 
		ifTrue: 
			[aTallyTree
				value: 'primitives';
				cr]
		ifFalse: 
			[aSelector := method selector.
			aClass := method methodClass.
			className := aClass name contractTo: self maxClassNameSize.
			aTallyTree 
				itemSelector: aSelector;
				itemClass: aClass.
			blockNesting > 0 ifTrue:
				[blockNesting timesRepeat: (aTallyTree methodSelector: aTallyTree methodSelector, '[').
				blockNesting timesRepeat: (aTallyTree methodSelector: aTallyTree methodSelector, ']')].
			aTallyTree methodSelector: class name, '(' , aClass name , ')>>',  (aSelector contractTo: self maxClassPlusSelectorSize - className size)]
		
	"value: (percentage printShowingDecimalPlaces: 1), '% {' , (percentage * totalTime / 100) rounded, 'ms'"