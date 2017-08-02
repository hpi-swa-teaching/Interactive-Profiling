as yet unclassified
tearDown

	super tearDown.
	Transcript show: 'hello from the other side'.

	PluggableSystemWindow allInstancesDo: [:morph | 
		(morph model isKindOf: TimeProfileBrowser) ifTrue: [morph abandon]].
	
	"make sure that all instances of TimeProfileBrowser whose result panes have been closed are deleted"
	Smalltalk garbageCollect.