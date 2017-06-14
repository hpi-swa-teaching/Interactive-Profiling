private
layoutScratchPad
	| pos width |
	World mainDockingBars do:
		[ : each | each searchBarMorph ifNotNil:
			[ : searchBar | pos := searchBar bottomLeft.
			width := searchBar width ] ].
	width ifNil: [ width := 250.  pos := World topRight - (width @ 5) ].
	scratchPad
		width: width ;
		position: pos ;
		startStepping: #deleteUnlessHasFocus at: Time millisecondClockValue arguments: nil stepTime: 3000