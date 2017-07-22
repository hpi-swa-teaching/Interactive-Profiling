private
buildTally

	self tally: MessageTally new.
	self tally
		reportOtherProcesses: true;
		maxClassNameSize: 1000;
		maxClassPlusSelectorSize: 1000;
		maxTabs: 100;
		root: self tally.
