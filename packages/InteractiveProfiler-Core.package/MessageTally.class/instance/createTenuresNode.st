private
createTenuresNode

	| incrementalGCs tenures average value |
	
	incrementalGCs := gcStats at: 9.
	tenures := gcStats at: 11.
	
	value := 'Tenures: ', tenures asStringWithCommas.
	tenures = 0 ifFalse: [
		average := ' (on avg ', (incrementalGCs // tenures) , ' GCs/tenure)'.
		value := value, average].
	^ TallyStatusNode new 
		value: value; 
		helpText: MessageTally tenuresHelpText