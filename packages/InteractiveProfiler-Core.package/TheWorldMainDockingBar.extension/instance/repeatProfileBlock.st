*InteractiveProfiler-Core
repeatProfileBlock
	
	| oldTime | 
	
	oldTime := TimeProfileBrowser lastSpyedOnTime.
	TimeProfileBrowser existsLastSpyedOnBlock
		ifTrue: [TimeProfileBrowser lastSpyedOnTime: 
			(TimeProfileBrowser repeatOnBlock: TimeProfileBrowser lastSpyedOnBlock).]