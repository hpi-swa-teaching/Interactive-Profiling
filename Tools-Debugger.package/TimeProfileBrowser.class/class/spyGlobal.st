instance creation
spyGlobal
	| controller |
	
	controller := TimeProfileBrowserController new.

	TimeProfileBrowser spyOn:
		[[Sensor peekPosition y > 0 and: TimeProfileBrowser stopIsRequested not] 
			whileTrue: [World doOneCycle. ]].
	
	TimeProfileBrowser stopIsRequested: false.
	controller delete.