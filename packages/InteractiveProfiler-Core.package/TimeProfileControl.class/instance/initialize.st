initialize-release
initialize

	super initialize.
	
	self
		isStopRequested: false;
		window: (ToolBuilder build: self).