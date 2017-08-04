testing
testProfileBlock

	| profilerCollection profilerCollectionDiff |

	profilerCollection := TimeProfileBrowser allInstances.
	TimeProfileBrowser profileBlock: self block.
	profilerCollectionDiff := TimeProfileBrowser allInstances difference: profilerCollection.
	self assert: profilerCollectionDiff size equals: 1.
	^ profilerCollectionDiff first