private
setRoots

	self statusRoots: self tally reportStatsAsTree.
	self leavesRoots: self tally reportLeavesAsTree.