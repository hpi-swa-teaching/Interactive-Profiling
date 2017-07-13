instance creation
spyGlobal
	| controller |
	
	controller := TimeProfileControl new.

	TimeProfileBrowser spyOn:
		[[Sensor peekPosition y > 0 and: controller isStopRequested not] 
			whileTrue: [World doOneCycle]].
	
	controller delete.