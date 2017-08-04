testing
testItemName

	| statusTreeWrapper | 
	
	statusTreeWrapper := StatusTreeWrapper with: self item model: nil parent: nil.
	self assert: statusTreeWrapper itemName equals: self item value. 
	self assert: statusTreeWrapper asString equals: self item value.