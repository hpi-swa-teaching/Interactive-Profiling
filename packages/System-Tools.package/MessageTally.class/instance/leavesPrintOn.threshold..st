printing
leavesPrintOn: aStream threshold: threshold
	| dict |
	dict := IdentityDictionary new: 100.
	self leavesInto: dict fromSender: nil.
	(dict values select: [:node | node tallyCount > threshold])
		sort do: [:node |
			node printOn: aStream total: tallyCount totalTime: time tallyExact: false ]