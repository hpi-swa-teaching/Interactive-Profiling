reporting
reportToTallyTree: aTallyTree cutoff: threshold 
	tally = 0
		ifTrue: [aTallyTree value: ' - no tallies obtained']
		ifFalse: 
			[aTallyTree value: ' - ',  tally,  ' tallies, ', time printString, ' msec.'.
			self fullToTallyTreeOn: aTallyTree threshold: threshold].
		
	time isZero ifFalse:	
		[self reportGCStatsOnTallyTree: aTallyTree].