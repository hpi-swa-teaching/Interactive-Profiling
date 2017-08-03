private
runBlock: aBlock

	| pollPeriod |
	
	pollPeriod := MessageTally defaultPollPeriod.
	^ self runBlock: aBlock pollingEvery: pollPeriod