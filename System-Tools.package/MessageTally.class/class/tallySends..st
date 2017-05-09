spying
tallySends: aBlock
	"
	MessageTally tallySends: [3.14159 printString]
	"

	^ self tallySendsTo: nil inBlock: aBlock showTree: true