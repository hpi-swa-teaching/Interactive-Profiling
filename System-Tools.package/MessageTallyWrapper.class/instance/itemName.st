accessing
itemName

	| blocks percentage time message |
	
	percentage := ((self fraction * 100) printShowingDecimalPlaces: 1) asString.
	time := self fraction * self item root tallyCount printShowingDecimalPlaces: 0.
	message :=  '', self itemClass, ' >> ' ,self itemSelector.
	blocks := ''.
	self item blockNesting 
		timesRepeat: [blocks := blocks, '['];
		timesRepeat: [blocks := blocks, ']'].

	^ percentage, '% {', time, 'ms} ', blocks, ' ', message