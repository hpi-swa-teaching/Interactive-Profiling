menu actions
repeatProfileBlock
	
	| oldTime | 
	
	oldTime := TimeProfileBrowser lastSpyedOnTime.
	TimeProfileBrowser lastSpyedOnTime: (TimeProfileBrowser repeatOnBlock: TimeProfileBrowser lastSpyedOnBlock).