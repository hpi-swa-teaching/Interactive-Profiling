testing
testHasNoContents

	| statusTreeWrapper | 
	
	statusTreeWrapper := StatusTreeWrapper with: self item model: nil parent: nil.
	self item children: OrderedCollection new.
	self assert: statusTreeWrapper hasContents not.