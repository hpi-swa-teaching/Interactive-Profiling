as yet unclassified
initialize

	super initialize.
	
	self
		isStopRequested: false;
		window: (ToolBuilder build: self).