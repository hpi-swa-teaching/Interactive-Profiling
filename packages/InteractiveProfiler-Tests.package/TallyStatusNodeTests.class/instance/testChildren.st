as yet unclassified
testChildren

	| tallyStatusNode tallyStatusChildNode |
	
	tallyStatusNode := TallyStatusNode new.
	tallyStatusChildNode := TallyStatusNode new.
	
	self assert: tallyStatusNode children equals: (OrderedCollection ofSize: 0).
	tallyStatusNode addChild: tallyStatusChildNode.
	self assert: tallyStatusNode children equals: (OrderedCollection newFrom: {tallyStatusChildNode}).