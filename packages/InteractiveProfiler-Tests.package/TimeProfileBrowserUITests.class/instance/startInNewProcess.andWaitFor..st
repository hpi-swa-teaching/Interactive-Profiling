private
startInNewProcess: aBlock andWaitFor: aNumber

	aBlock newProcess resume.
	(Delay forMilliseconds: aNumber) wait.