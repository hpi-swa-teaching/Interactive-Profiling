instance creation
repeatOnBlock: block
	"Open a profile browser on the given block, thereby running the block and 
	 collecting the message tally."
	"TimeProfileBrowser onBlock: [20 timesRepeat: 
			[Transcript show: 100 factorial printString]]"

	| inst result |
	inst := self new.
	result := inst repeatRunBlock: block lastTime: self lastSpyedOnTime.
	self open: inst name: 
		'Time Profile (',
		(result - self lastSpyedOnTime) asStringWithCommasSigned, 'ms, ',
		'last execution took ', self lastSpyedOnTime, 'ms)'.
	^ result