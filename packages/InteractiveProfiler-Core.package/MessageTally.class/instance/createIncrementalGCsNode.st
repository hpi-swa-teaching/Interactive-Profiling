private
createIncrementalGCsNode

	| incrementalGCs incrementalGCTime upTime average total value |
	
	incrementalGCs := gcStats at: 9.
	incrementalGCTime	 := gcStats at: 10.
	
	value := 'Incremental GCs: ', incrementalGCs.
	incrementalGCs = 0 ifFalse: [
		total := ', totalling ', incrementalGCTime asStringWithCommas, 'ms '.
		upTime := '(', (incrementalGCTime / time * 100) asInteger, '% uptime), '.
		average := 'on avg ', (incrementalGCTime / incrementalGCs) asInteger, 'ms'.
		value := value, total, upTime, average].
	^ TallyStatusNode new 
		value: value; 
		helpText: MessageTally incrementalGcHelpText