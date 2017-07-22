reporting
reportStatsAsTree
	| oldSpaceEnd youngSpaceEnd memoryEnd fullGCs fullGCTime incrGCs incrGCTime tenureCount upTime rootOverflows memTree gcTree timeTree |
	upTime := time.
	oldSpaceEnd			:= gcStats at: 1.
	youngSpaceEnd		:= gcStats at: 2.
	memoryEnd			:= gcStats at: 3.
	fullGCs				:= gcStats at: 7.
	fullGCTime			:= gcStats at: 8.
	incrGCs				:= gcStats at: 9.
	incrGCTime			:= gcStats at: 10.
	tenureCount			:= gcStats at: 11.
	rootOverflows		:= gcStats at: 22.

	timeTree := TallyStatusNode new value: 'Duration'.
	timeTree 
		addChild: (TallyStatusNode new value: 'Tallies: ', self tallyCount);
		addChild: (TallyStatusNode new value: 'Time: ', self time, 'ms').

	memTree := TallyStatusNode new value: 'Memory consumption'; helpText: MessageTally memoryHelpText.
	memTree addChild: (TallyStatusNode new value:  'Old space: ', (oldSpaceEnd asStringWithCommasSigned: true), ' bytes').
	memTree addChild: (TallyStatusNode new value:  'Young space: ',((youngSpaceEnd - oldSpaceEnd) asStringWithCommasSigned: true), ' bytes').
	memTree addChild: (TallyStatusNode new value:  'Overall: ', (youngSpaceEnd asStringWithCommasSigned: true), ' bytes').
	memTree addChild: (TallyStatusNode new value:'Free space: ', ((memoryEnd - youngSpaceEnd) asStringWithCommasSigned: true), ' bytes').

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
	^ {timeTree. memTree. gcTree} asOrderedCollection 
