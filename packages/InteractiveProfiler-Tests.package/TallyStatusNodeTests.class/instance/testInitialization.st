testing
testInitialization

	| tallyStatusNode | 
	
	tallyStatusNode := TallyStatusNode new.
	self assert: tallyStatusNode value equals: ''.
	self assert: tallyStatusNode children class equals: OrderedCollection.
	