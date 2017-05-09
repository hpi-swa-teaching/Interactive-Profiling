spying
spyAllOn: aBlock
	"Spy on all the processes in the system
	
	[1000 timesRepeat: [3.14159 printString. Processor yield]] fork.
	[1000 timesRepeat: [20 factorial. Processor yield]] fork.
	[1000 timesRepeat: [20 factorial. Processor yield]] fork.
	MessageTally spyAllOn: [ (Delay forMilliseconds: 100) wait]
	
	"
	| node result |
	node := self new.
	node reportOtherProcesses: true. "Irrelevant in this case. All processes will be reported on their own."
	result := node spyAllEvery: self defaultPollPeriod on: aBlock.
	self showReport: node.
	^ result