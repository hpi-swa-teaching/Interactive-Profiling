as yet unclassified
testInitialization

	| timeProfileControl | 
	
	timeProfileControl := TimeProfileControl new.
	self assert: (timeProfileControl isStopRequested not).
	timeProfileControl delete.
	Smalltalk garbageCollect.
	