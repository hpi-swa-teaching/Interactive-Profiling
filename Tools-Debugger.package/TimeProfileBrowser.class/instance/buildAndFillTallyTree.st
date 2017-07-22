private
buildAndFillTallyTree

	self statusRoots: self tally reportStatsAsTree.
	self leavesRoots: self tally reportLeavesAsTree .