printing
leavesToTallyTreeOn: aTallyTree threshold: threshold
	| dict |
	dict := IdentityDictionary new: 100.
	self leavesInto: dict fromSender: nil.
	(dict values select: [:node | node tally > threshold])
		sort do: [:node |
			node toTallyTreeOn: (aTallyTree addChild: TallyTree new) total: tally totalTime: time tallyExact: false ]