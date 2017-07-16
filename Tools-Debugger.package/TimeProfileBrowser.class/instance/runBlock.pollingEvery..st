private
runBlock: aBlock pollingEvery: pollPeriod 
	
	self block: aBlock.
	self buildTally.
	self tally 
		spyEvery: pollPeriod
		on: aBlock.
	self buildAndFillTallyTree.
	^ self tally time