reporting
reportGCStatsOnTallyTree: aTallyTree
	| oldSpaceEnd youngSpaceEnd memoryEnd fullGCs fullGCTime incrGCs incrGCTime tenureCount upTime rootOverflows memTree gcTree |
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

	memTree := TallyNode new value: '**Memory**'.
	aTallyTree addChild: memTree.
	memTree addChild: (TallyNode new value:  'old ', (oldSpaceEnd asStringWithCommasSigned: true), ' bytes').
	memTree addChild: (TallyNode new value:  'young ',((youngSpaceEnd - oldSpaceEnd) asStringWithCommasSigned: true), ' bytes').
	memTree addChild: (TallyNode new value:  'used ', (youngSpaceEnd asStringWithCommasSigned: true), ' bytes').
	memTree addChild: (TallyNode new value:'free ', ((memoryEnd - youngSpaceEnd) asStringWithCommasSigned: true), ' bytes').

	gcTree := aTallyTree addChild: (TallyNode new value: '**GCs**').
	gcTree addChild: (TallyNode new value:'full ', fullGCs, ' totalling ',fullGCTime asStringWithCommas, ' ms (', (fullGCTime / upTime * 100), '% uptime)').
	fullGCs = 0 ifFalse:
		[(gcTree children at: 0)	value: (gcTree children at:0) value,  ', avg ',(fullGCTime / fullGCs), ' ms'].
	gcTree addChild: (TallyNode new value: 'incr ', incrGCs, ' totalling ', incrGCTime asStringWithCommas,' ms (', (incrGCTime / upTime * 100), '% uptime)').
	incrGCs = 0 ifFalse:
		[(gcTree children at: 1)	value: (gcTree children at:1) value, ', avg ', (incrGCTime / incrGCs), ' ms'].
	gcTree addChild: (TallyNode new value: 'tenures ', (tenureCount asStringWithCommas)).
	tenureCount = 0 ifFalse:
		[(gcTree children at: 2)	value: (gcTree children at:2) value, ' (avg ', incrGCs // tenureCount, ' GCs/tenure)'].
	gcTree addChild: (TallyNode new value: 'root table ', rootOverflows asStringWithCommas,' overflows').
