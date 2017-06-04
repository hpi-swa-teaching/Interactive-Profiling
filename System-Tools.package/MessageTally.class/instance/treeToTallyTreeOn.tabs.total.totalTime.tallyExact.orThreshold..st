printing
treeToTallyTreeOn: aTallyTree tabs: tabs total: total totalTime: totalTime tallyExact: isExact orThreshold: threshold 
	| sons |
	tabs do: [:tab | aTallyTree value: '1'].
	"self halt."
	self 
		printOnTallyTree: aTallyTree
		total: total
		totalTime: totalTime
		tallyExact: isExact.
	sons := isExact ifTrue: [receivers] ifFalse: [self sonsOver: threshold].
	sons isEmpty 
		ifFalse: 
			[sons sort.
			1 to: sons size do: [ :i | 
				| sonTab |
				sonTab := i < sons size ifTrue: ['  |'] ifFalse: ['  '].
				(sons at: i) 
					treeToTallyTreeOn: (aTallyTree addChild: TallyNode new)
					tabs: (tabs size < self maxTabs 
							ifTrue: [tabs]
							ifFalse: [(tabs select: [:x | x = '[']) copyWith: '['])
					total: total
					totalTime: totalTime
					tallyExact: isExact
					orThreshold: threshold].
			"tabs removeLast"]