private
startInNewProcess: aBlock andWait: aNumber

	aBlock newProcess resume.
	(Delay forMilliseconds: aNumber) wait.