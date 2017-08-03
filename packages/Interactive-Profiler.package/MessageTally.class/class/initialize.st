class initialization
initialize
	"MessageTally initialize"
	"By default, show each process separately"
	ShowProcesses ifNil: [ShowProcesses := true].
	Smalltalk
		addToShutDownList: self after: Delay; "i.e. convert to relative times & stats after Delay sleeps."
		addToStartUpList: self before: Delay "i.e. convert back to absolute stats before Delay wakes."