testing
testInitialization

	| timeProfileControl | 
	
	timeProfileControl := TimeProfileControl new.
	self assert: (timeProfileControl isStopRequested not).
	timeProfileControl destruct.
	Smalltalk garbageCollect.
	