printing
leavesPrintExactOn: aStream
	| dict |
	dict := IdentityDictionary new: 100.
	self leavesInto: dict fromSender: nil.
	dict values sort
		do: [ :node |
			node printOn: aStream total: tallyCount totalTime: nil tallyExact: true.
			node printSenderCountsOn: aStream ]