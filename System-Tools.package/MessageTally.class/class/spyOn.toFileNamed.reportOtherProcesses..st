spying
spyOn: aBlock toFileNamed: fileName reportOtherProcesses: aBoolean
	"Spy on the evaluation of aBlock. Write the data collected on a file
	named fileName."

	| value node |
	node := self new.
	node reportOtherProcesses: aBoolean.
	value := node spyEvery: self defaultPollPeriod on: aBlock.
	FileStream newFileNamed: fileName do: [ :file |
		node report: file ].
	^value