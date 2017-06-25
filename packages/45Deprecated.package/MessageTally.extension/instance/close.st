*45Deprecated
close

	self deprecated: 'Use MessageTally >> #terminateTimerProcess'.
	Timer ifNotNil: [ Timer terminate ].
	Timer := nil.
	class := method := tally := receivers := nil