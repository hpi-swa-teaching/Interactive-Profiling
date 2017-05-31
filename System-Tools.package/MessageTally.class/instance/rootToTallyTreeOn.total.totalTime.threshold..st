printing
rootToTallyTreeOn: aTallyTree total: total totalTime: totalTime threshold: threshold

	| groups sons |
	sons := self sonsOver: threshold.
	groups := sons groupBy: [ :aTally | aTally process ].
	groups keysAndValuesDo: [ :p :g |
		(reportOtherProcesses or: [ p notNil ]) ifTrue: [
			aTallyTree addChild: (TallyTree new value: 'Process: ', 'other processes').
			g sort do:[:aSon | 
				aSon 
					treeToTallyTreeOn: (aTallyTree addChild: TallyTree new) 
					tabs: OrderedCollection new
					total: total
					totalTime: totalTime
					tallyExact: false
					orThreshold: threshold]].
	]