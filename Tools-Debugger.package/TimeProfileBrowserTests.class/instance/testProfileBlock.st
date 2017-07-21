as yet unclassified
testProfileBlock

	| profilerCollection |

	profilerCollection := TimeProfileBrowser allInstances.
	TheWorldMainDockingBar new profileBlock: self block.
	self assert: (TimeProfileBrowser allInstances difference: profilerCollection) size == 1.