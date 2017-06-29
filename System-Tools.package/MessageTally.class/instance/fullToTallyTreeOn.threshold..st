printing
fullToTallyTreeOn: aTallyTree threshold: perCent
	| threshold leavesTree|  
	threshold := (perCent asFloat / 100 * tally) rounded.
	self
		rootToTallyTreeOn: aTallyTree
		total: tally
		totalTime: time
		threshold: threshold.
	leavesTree := TallyNode new value: '**Leaves**'.
	aTallyTree addChild: leavesTree.
	self
		leavesToTallyTreeOn: leavesTree
		threshold: threshold