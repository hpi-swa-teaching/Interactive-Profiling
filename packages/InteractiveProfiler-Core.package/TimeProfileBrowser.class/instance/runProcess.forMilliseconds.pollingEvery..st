private
runProcess: aProcess forMilliseconds: aNumber pollingEvery: anotherNumber
	
	self 
		block: aProcess;
		buildTally.
	self tally 
		spyEvery: anotherNumber
		onProcess: aProcess
		forMilliseconds: aNumber.
	self setRoots.
	^ self tally time