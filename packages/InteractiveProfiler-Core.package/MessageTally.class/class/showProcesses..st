defaults
showProcesses: aBool
	"Indicates whether to show each process separately or cumulatively.
	For example, compare the spy results of the following with both values:
	
		[1000 timesRepeat: [3.14159 printString. Processor yield]] fork.
		[1000 timesRepeat: [30 factorial. Processor yield]] fork.
		[1000 timesRepeat: [30 factorial. Processor yield]] fork.
		MessageTally spyAllOn: [ (Delay forMilliseconds: 100) wait]

	"
	ShowProcesses := aBool.