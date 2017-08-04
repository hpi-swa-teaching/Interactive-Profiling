instance creation
profileGlobal

	| controller |
	
	controller := TimeProfileControl new.
	TimeProfileBrowser spyOn:
		[[controller isStopRequested not] 
			whileTrue: [World doOneCycle]].
	controller destruct.