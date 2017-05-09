private
convertToOrFromDeltaForHibernation
	"Convert between absolute and relative times and stats (and back!)."
	| now |
	now := Time millisecondClockValue.
	startTime ifNotNil: [startTime := now - startTime].
	time0 ifNotNil: [time0 := now - time0].
	endTime ifNotNil: [endTime := now - endTime].
	self computeGCStats