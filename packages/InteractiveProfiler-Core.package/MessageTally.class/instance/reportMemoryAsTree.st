reporting
reportMemoryAsTree
	
	| memTree oldSpaceEnd youngSpaceEnd memoryEnd |

	oldSpaceEnd		:= gcStats at: 1.
	youngSpaceEnd	:= gcStats at: 2.
	memoryEnd		:= gcStats at: 3.

	memTree := TallyStatusNode new value: 'Memory consumption'; helpText: MessageTally memoryHelpText.
	memTree addChild: (TallyStatusNode new value: 'Old space: ', (oldSpaceEnd asStringWithCommasSigned: true), ' bytes').
	memTree addChild: (TallyStatusNode new value: 'Young space: ', ((youngSpaceEnd - oldSpaceEnd) asStringWithCommasSigned: true), ' bytes').
	memTree addChild: (TallyStatusNode new value: 'Overall: ', (youngSpaceEnd asStringWithCommasSigned: true), ' bytes').
	memTree addChild: (TallyStatusNode new value: 'Free space: ', ((memoryEnd - youngSpaceEnd) asStringWithCommasSigned: true), ' bytes').
	
	^ memTree