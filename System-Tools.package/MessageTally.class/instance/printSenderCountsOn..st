printing
printSenderCountsOn: aStream
	| mergedSenders |
	mergedSenders := IdentityDictionary new.
	senders do:
		[:node |
		| mergedNode |
		mergedNode := mergedSenders at: node method ifAbsent: [nil].
		mergedNode == nil
			ifTrue: [mergedSenders at: node method put: node]
			ifFalse: [mergedNode bump: node tallyCount]].
	mergedSenders values sort do:
		[:node | 
		10 to: node tallyCount printString size by: -1 do: [:i | aStream space].
		node printOn: aStream total: tallyCount totalTime: nil tallyExact: true]