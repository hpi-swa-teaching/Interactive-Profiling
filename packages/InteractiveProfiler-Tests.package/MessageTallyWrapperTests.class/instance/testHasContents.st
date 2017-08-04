testing
testHasContents

	| messageTallyWrapper | 
	
	messageTallyWrapper := MessageTallyWrapper with: self item model: nil parent: nil.
	self item receivers: {MessageTally new}.
	self assert: messageTallyWrapper hasContents. 
	self item receivers: {}.