printing
rootPrintOn: aStream total: total totalTime: totalTime threshold: threshold

	| groups sons |
	sons := self sonsOver: threshold.
	groups := sons groupBy: [ :aTally | aTally process ].
	groups keysAndValuesDo: [ :p :g |
		(reportOtherProcesses or: [ p notNil ]) ifTrue: [
			aStream nextPutAll: '--------------------------------'; cr.
			aStream nextPutAll: 'Process: ',  (p ifNil: [ 'other processes'] ifNotNil: [ p browserPrintString]); cr.
			aStream nextPutAll: '--------------------------------'; cr.
			g sort do:[:aSon | 
				aSon 
					treePrintOn: aStream
					tabs: OrderedCollection new
					thisTab: ''
					total: total
					totalTime: totalTime
					tallyExact: false
					orThreshold: threshold]].
	]