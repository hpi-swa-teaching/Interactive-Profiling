reporting
reportGCStatsAsTree
	
	| gcTree  fullGCs fullGCTime incrGCs incrGCTime tenureCount upTime rootOverflows |
	
	upTime 			:= time.
	fullGCs				:= gcStats at: 7.
	fullGCTime			:= gcStats at: 8.
	incrGCs				:= gcStats at: 9.
	incrGCTime			:= gcStats at: 10.
	tenureCount		:= gcStats at: 11.
	rootOverflows		:= gcStats at: 22.

	gcTree := TallyStatusNode new value: 'Garbage collection activity'; helpText: MessageTally gcHelpText.
	
	gcTree addChild: (TallyStatusNode new value: 'Incremental GCs: ', incrGCs, ', totalling ', incrGCTime asStringWithCommas,' ms (', (incrGCTime / upTime * 100) asInteger, '% uptime)'; helpText: MessageTally incrementalGcHelpText).
	incrGCs = 0 ifFalse:
		[(gcTree children at: 1)	value: (gcTree children at: 1) value, ', on avg ', (incrGCTime / incrGCs) asInteger, ' ms'].

	gcTree addChild: (TallyStatusNode new value:'Full GCs: ', fullGCs, ', totalling ',fullGCTime asStringWithCommas, ' ms (', (fullGCTime / upTime * 100) asInteger, '% uptime)'; helpText: MessageTally fullGcHelpText).
	fullGCs = 0 ifFalse:
		[(gcTree children at: 2)	value: (gcTree children at: 2) value,  ', on avg ',(fullGCTime / fullGCs) asInteger, ' ms'].
	
	gcTree addChild: (TallyStatusNode new value: 'Tenures: ', (tenureCount asStringWithCommas); helpText: MessageTally tenuresHelpText).
	tenureCount = 0 ifFalse:
		[(gcTree children at: 3)	value: (gcTree children at: 3) value, ' (on avg ', (incrGCs // tenureCount), ' GCs/tenure)'].
	
	gcTree addChild: (TallyStatusNode new value: 'Root table overflows: ', rootOverflows asStringWithCommas; helpText: MessageTally rootTableHelpText).
	 	
	^ gcTree