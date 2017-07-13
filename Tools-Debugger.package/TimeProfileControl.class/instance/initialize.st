as yet unclassified
initialize

	super initialize.
	
	self isStopRequested: false.
	self window: (ToolBuilder build: self).