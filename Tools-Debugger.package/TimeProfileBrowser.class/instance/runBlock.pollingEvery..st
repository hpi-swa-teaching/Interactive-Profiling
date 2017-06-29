private
runBlock: aBlock pollingEvery: pollPeriod 
	block := MessageSend 
				receiver: self
				selector: #runBlock:pollingEvery:
				arguments: { 
						aBlock.
						pollPeriod}.	"so we can re-run it"
	tally := MessageTally new.
	tally
		reportOtherProcesses: true;
		maxClassNameSize: 1000;
		maxClassPlusSelectorSize: 1000;
		maxTabs: 100.
	tally spyEvery: pollPeriod on: aBlock.
	self tallyTree: TallyNode new.
	tally reportToTallyTree: self tallyTree.
	self initializeMessageList.
	self changed: #messageList.
	self changed: #messageListIndex.