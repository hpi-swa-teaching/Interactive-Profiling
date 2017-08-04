private
createFullGCsNode

	| fullGCs fullGCTime upTime average total value |
	
	fullGCs := gcStats at: 7.
	fullGCTime := gcStats at: 8.
	
	value := 'Full GCs: ', fullGCs.
	fullGCs = 0 ifFalse: [
		total := ', totalling ', fullGCTime asStringWithCommas, 'ms '.
		upTime := '(', (fullGCTime / time * 100) asInteger, '% uptime), '.
		average := 'on avg ', (fullGCTime / fullGCs) asInteger, ' ms'.
		value := value, total, upTime, average].
	^ TallyStatusNode new 
		value: value; 
		helpText: MessageTally fullGcHelpText
	