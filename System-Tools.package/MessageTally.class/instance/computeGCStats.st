private
computeGCStats
	"Compute the deltas in the GC stats.  Serves for reporting, hibernating and unhibernating."
	Smalltalk getVMParameters keysAndValuesDo:
		[ :idx :gcVal |
		gcVal isNumber ifTrue: [gcStats at: idx put: (gcVal - (gcStats at: idx))]]