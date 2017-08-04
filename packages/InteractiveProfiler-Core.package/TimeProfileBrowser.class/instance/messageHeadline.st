toolbuilder
messageHeadline

	^ (self hasSelectionMethodReference or: [self block class = Process])
		ifTrue: ['']
		ifFalse: ['DoIt', String cr, String cr]