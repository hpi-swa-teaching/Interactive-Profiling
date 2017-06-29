printing
rootToTallyTreeOn: aTallyTree total: total totalTime: totalTime threshold: threshold

	| groups sons tallyTree |
	sons := self sonsOver: threshold.
	groups := sons groupBy: [ :aTally | aTally process ].
	groups keysAndValuesDo: [ :p :g |
		(reportOtherProcesses or: [ p notNil ]) ifTrue: [
			tallyTree := TallyNode new.
			aTallyTree addChild: tallyTree.
			tallyTree  value: 'Process: ', (p ifNil: [ 'other processes'] ifNotNil: [ p browserPrintString]).
			g sort do:[:aSon | 
				aSon 
					treeToTallyTreeOn: (tallyTree addChild: TallyNode new) 
					tabs: OrderedCollection new
					total: total
					totalTime: totalTime
					tallyExact: false
					orThreshold: threshold]].
	]