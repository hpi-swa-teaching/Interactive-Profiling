printing
fullPrintExactOn: aStream
	aStream nextPutAll: '**Tree**'; cr.
	self
		treePrintOn: aStream
		tabs: OrderedCollection new
		thisTab: ''
		total: tallyCount
		totalTime: time
		tallyExact: true
		orThreshold: nil.
	aStream nextPut: Character newPage; cr.
	aStream nextPutAll: '**Leaves**'; cr.
	self leavesPrintExactOn: aStream