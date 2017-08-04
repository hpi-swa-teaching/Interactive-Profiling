testing
testHasNoContents

	| messageTallyWrapper | 
	
	messageTallyWrapper := MessageTallyWrapper with: self item model: nil parent: nil.
	self item receivers: {}.
	self assert: messageTallyWrapper hasContents not.