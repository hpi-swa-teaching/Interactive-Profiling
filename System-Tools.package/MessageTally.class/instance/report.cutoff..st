reporting
report: strm cutoff: threshold 
	tallyCount = 0
		ifTrue: [strm nextPutAll: ' - no tallies obtained']
		ifFalse: 
			[strm nextPutAll: ' - '; print: tallyCount; nextPutAll: ' tallies, ', time printString, ' msec.'; cr; cr.
			self fullPrintOn: strm threshold: threshold].
		
	time isZero ifFalse:	
		[self reportGCStatsOn: strm].