reporting
reportToTallyTree: aTallyStatusNode cutoff: threshold 
	tally = 0
		ifTrue: [aTallyStatusNode value: 'No tallies obtained']
		ifFalse: 
			[aTallyStatusNode value: tally printString,  ' tallies, ', time printString, ' msec.'.
			self fullToTallyTreeOn: aTallyStatusNode threshold: threshold].