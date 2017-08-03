private
runBlock: aBlock compareWith: aNumber

	| pollPeriod executionTime |
	
	pollPeriod := MessageTally defaultPollPeriod.
	executionTime := self runBlock: aBlock pollingEvery: pollPeriod.
	(self statusRoots first) 
		addChild: (TallyStatusNode new value: 'Last Execution: ', aNumber,'ms');
		addChild: (TallyStatusNode new value: 'Delta: ', (executionTime - aNumber),'ms').
	^ executionTime