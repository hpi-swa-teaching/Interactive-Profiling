private
buildAndFillTallyTree

	self tallyTree: TallyStatusNode new.
	tally reportToTallyTree: self tallyTree.
	"self changed: #messageList."