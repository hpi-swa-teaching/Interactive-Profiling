*51Deprecated
checkForNewDisplaySize

	self deprecated: 'Use DisplayScreen class >> #checkForNewScreenSize. Note that is actually no task for the UI manager. It belongs to the projects main loop.'.
	Display extent = DisplayScreen actualScreenSize ifTrue: [^ self].
	DisplayScreen startUp.