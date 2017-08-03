as yet unclassified
testBallonText

	| messageTallyWrapper | 
	
	messageTallyWrapper := MessageTallyWrapper with: self item model: nil parent: nil.
	self assert: messageTallyWrapper balloonText equals: nil. 