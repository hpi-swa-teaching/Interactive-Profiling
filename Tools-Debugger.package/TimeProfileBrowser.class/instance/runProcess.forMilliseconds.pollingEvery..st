private
runProcess: aProcess forMilliseconds: msecDuration pollingEvery: pollPeriod 
	block := MessageSend 
				receiver: self
				selector: #runProcess:forMilliseconds:pollingEvery: 
				arguments: { 
						aProcess.
						msecDuration.
						pollPeriod}.	"so we can re-run it"
	tally := MessageTally new.
	tally
		reportOtherProcesses: false;
		maxClassNameSize: 1000;
		maxClassPlusSelectorSize: 1000;
		maxTabs: 100.
	tally 
		spyEvery: pollPeriod
		onProcess: aProcess
		forMilliseconds: msecDuration.
	self initializeMessageList.
	self changed: #messageList.
	self changed: #messageListIndex.