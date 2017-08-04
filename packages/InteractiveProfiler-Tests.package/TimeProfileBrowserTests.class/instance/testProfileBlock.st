testing
testProfileBlock

	| profilerCollection profilerCollectionDiff |

	profilerCollection := TimeProfileBrowser allInstances.
	TheWorldMainDockingBar new profileBlock: self block.
	profilerCollectionDiff := TimeProfileBrowser allInstances difference: profilerCollection.
	self assert: profilerCollectionDiff size equals: 1.
	^ profilerCollectionDiff first