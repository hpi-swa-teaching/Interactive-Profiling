private
fraction

	^ (self item root tallyCount = 0)
		ifTrue: [0]
		ifFalse: [self item tallyCount asFloat / self item root tallyCount]