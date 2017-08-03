printing
fullPrintOn: aStream threshold: perCent
	| threshold |  
	threshold := (perCent asFloat / 100 * tallyCount) rounded.
	aStream nextPutAll: '**Tree**'; cr.
	self
		rootPrintOn: aStream
		total: tallyCount
		totalTime: time
		threshold: threshold.
	aStream nextPut: Character newPage; cr.
	aStream nextPutAll: '**Leaves**'; cr.
	self
		leavesPrintOn: aStream
		threshold: threshold