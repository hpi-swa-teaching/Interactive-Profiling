as yet unclassified
testStop

	| timeProfileControl | 
	
	timeProfileControl := TimeProfileControl new.
	timeProfileControl requestStop.
	self assert: (timeProfileControl isStopRequested).
	timeProfileControl delete.
	Smalltalk garbageCollect.
	