testing
testStop

	| timeProfileControl | 
	
	timeProfileControl := TimeProfileControl new.
	timeProfileControl requestStop.
	self assert: (timeProfileControl isStopRequested).
	timeProfileControl destruct.
	Smalltalk garbageCollect.
	