private
buildAndFillTallyTree

	self tallyTree: TallyStatusNode new.
	self tally reportToTallyTree: self tallyTree.