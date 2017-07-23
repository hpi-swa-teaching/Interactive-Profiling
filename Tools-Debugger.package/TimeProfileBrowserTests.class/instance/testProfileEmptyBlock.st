testing
testProfileEmptyBlock

	| profilerCollection profilerCollectionDiff |

	profilerCollection := TimeProfileBrowser allInstances.
	TheWorldMainDockingBar new profileBlock: self emptyBlock.
	profilerCollectionDiff := TimeProfileBrowser allInstances difference: profilerCollection.
	
"	profilerMorphCollection := self getProfilerMorphs.
	TheWorldMainDockingBar new profileBlock: self emptyBlock.
	profilerMorphCollectionDiff := profilerMorphCollection difference: self getProfilerMorphs."
	self assert: profilerCollectionDiff size == 1.
	^ profilerCollectionDiff first