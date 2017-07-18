private
runProcess: aProcess forMilliseconds: msecDuration pollingEvery: pollPeriod 
	
	self 
		block: aProcess;
		buildTally.
	self tally 
		spyEvery: pollPeriod
		onProcess: aProcess
		forMilliseconds: msecDuration.
	self buildAndFillTallyTree.
	^ self tally time