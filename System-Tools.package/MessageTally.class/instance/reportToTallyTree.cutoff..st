reporting
reportToTallyTree: aTallyTree cutoff: threshold 
	tally = 0
		ifTrue: [aTallyTree value: 'No tallies obtained']
		ifFalse: 
			[aTallyTree value: tally printString,  ' tallies, ', time printString, ' msec.'.
			self fullToTallyTreeOn: aTallyTree threshold: threshold].
		
	time isZero ifFalse:	
		[self reportGCStatsOnTallyTree: aTallyTree].