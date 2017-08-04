private
profileBlock: aBlock

	| profilerCollection profilerCollectionDiff |

	profilerCollection := TimeProfileBrowser allInstances.
	TimeProfileBrowser profileBlock: aBlock.
	profilerCollectionDiff := TimeProfileBrowser allInstances difference: profilerCollection.
	self assert: profilerCollectionDiff size equals: 1.
	^ profilerCollectionDiff first