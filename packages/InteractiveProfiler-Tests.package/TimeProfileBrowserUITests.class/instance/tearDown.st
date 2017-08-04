initialize-release
tearDown

	super tearDown.

	PluggableSystemWindow allInstancesDo: [:morph | 
		(morph model isKindOf: TimeProfileBrowser) ifTrue: [morph abandon]].
	Smalltalk garbageCollect.