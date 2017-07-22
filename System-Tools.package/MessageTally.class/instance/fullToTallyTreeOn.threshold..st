printing
fullToTallyTreeOn: aTallyTree threshold: perCent
	| threshold|  
	threshold := (perCent asFloat / 100 * tally) rounded.
	self
		rootToTallyTreeOn: aTallyTree
		total: tally
		totalTime: time
		threshold: threshold.