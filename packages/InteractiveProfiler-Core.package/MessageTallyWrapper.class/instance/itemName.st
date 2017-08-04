accessing
itemName

	| blocks message |
	
	blocks := ''.
	self item blockNesting 
		timesRepeat: [blocks := blocks, '['];
		timesRepeat: [blocks := blocks, ']'].
	message :=  '', self itemClass, ' >> ', self itemSelector.
	^ self percentageString, ' {', self timeString, '} ', blocks, ' ', message