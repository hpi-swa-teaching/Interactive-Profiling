private
repeatRunBlock: aBlock lastTime: aNumber

	| pollPeriod executionTime |
	
	pollPeriod := MessageTally defaultPollPeriod.
	executionTime := self runBlock: aBlock pollingEvery: pollPeriod.
	(self statusRoots at: 1) 
		addChild: (TallyStatusNode new value: 'Last Execution: ', aNumber,'ms');
		addChild: (TallyStatusNode new value: 'Delta: ', (executionTime - aNumber),'ms').
	^ executionTime