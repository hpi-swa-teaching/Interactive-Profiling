instance creation
spyGlobal
	| controller |
	
	controller := TimeProfileControl new.

	TimeProfileBrowser spyOn:
		[[controller isStopRequested not] 
			whileTrue: [World doOneCycle]].
	
	controller destruct.