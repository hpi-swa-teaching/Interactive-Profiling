reporting
reportGCStatsAsTree
	
	| gcTree |
	
	gcTree := TallyStatusNode new value: 'Garbage collection activity'; helpText: MessageTally gcHelpText.
	gcTree addChild: self createIncrementalGCsNode.
	gcTree addChild: self createFullGCsNode.
	gcTree addChild: self createTenuresNode.
	gcTree addChild: self createOverflowsNode.
	^ gcTree