testing
testHasContents

	| statusTreeWrapper | 
	
	statusTreeWrapper := StatusTreeWrapper with: self item model: nil parent: nil.
	self item addChild: TallyStatusNode new.
	self assert: statusTreeWrapper hasContents. 
	self item children: OrderedCollection new.