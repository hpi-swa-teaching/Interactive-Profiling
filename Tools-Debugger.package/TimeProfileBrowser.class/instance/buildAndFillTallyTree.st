private
buildAndFillTallyTree

	self statusRoots: self tally reportStatsAsTree.
	self leavesRoots: self tally leavesAsTree .
	self tallyTree: TallyStatusNode new.
	self tally reportToTallyTree: self tallyTree.