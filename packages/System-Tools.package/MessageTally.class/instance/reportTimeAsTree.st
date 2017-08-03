reporting
reportTimeAsTree
	
	| timeTree |

	timeTree := TallyStatusNode new value: 'Duration'.
	timeTree 
		addChild: (TallyStatusNode new value: 'Tallies: ', self tallyCount);
		addChild: (TallyStatusNode new value: 'Time: ', self time, 'ms').
		
	^ timeTree