spying
tallySendsTo: receiver inBlock: aBlock showTree: treeOption
	"
	MessageTally tallySends: [3.14159 printString]
	"
	"This method uses the simulator to count the number of calls on each method
	invoked in evaluating aBlock. If receiver is not nil, then only sends
	to that receiver are tallied.
	Results are presented as leaves, sorted by frequency,
	preceded, optionally, by the whole tree."
	| prev tallies startTime totalTime |
	startTime := Time millisecondClockValue.
	tallies := MessageTally new class: aBlock receiver class method: aBlock method.
	tallies reportOtherProcesses: true.	"Do NOT filter nodes with nil process"
	prev := aBlock.
	thisContext sender
		runSimulated: aBlock
		contextAtEachStep: [ :current |
			current == prev ifFalse: [ "call or return"
				prev sender == nil ifFalse: [ "call only"
					(receiver == nil or: [ current receiver == receiver ])
						ifTrue: [ tallies tally: current by: 1 ] ].
				prev := current ] ].

	totalTime := Time millisecondClockValue - startTime // 1000.0.
	(StringHolder new contents:
		(String streamContents:
			[:s |
			s nextPutAll: 'This simulation took ' , (totalTime printShowingMaxDecimalPlaces: 2)
							, ' seconds.'; cr.
			treeOption
				ifTrue: [ tallies fullPrintExactOn: s ]
				ifFalse: [ tallies leavesPrintExactOn: s ] ]))
		openLabel: 'Spy Results'