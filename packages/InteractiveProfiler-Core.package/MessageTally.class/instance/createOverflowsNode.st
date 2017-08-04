private
createOverflowsNode

	| rootOverflows |
	
	rootOverflows := gcStats at: 22.
	^ TallyStatusNode new 
		value: 'Root table overflows: ', rootOverflows asStringWithCommas; 
		helpText: MessageTally rootTableHelpText