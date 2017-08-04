testing
testBallonText

	| statusTreeWrapper | 
	
	statusTreeWrapper := StatusTreeWrapper with: self item model: nil parent: nil.
	self assert: statusTreeWrapper balloonText equals: self item helpText. 