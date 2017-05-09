spying
spyOnProcess: aProcess forMilliseconds: msecDuration toFileNamed: fileName 
	"Spy on the evaluation of aProcess. Write the data collected on a file  
	named fileName. Will overwrite fileName"
	| node |
	node := self new.
	node
		spyEvery: self defaultPollPeriod
		onProcess: aProcess
		forMilliseconds: msecDuration.
	FileStream fileNamed: fileName do: [ :file |
		node report: file ]