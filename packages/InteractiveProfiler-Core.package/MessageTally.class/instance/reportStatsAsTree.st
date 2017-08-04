reporting
reportStatsAsTree

	^ {self reportTimeAsTree. self reportMemoryAsTree. self reportGCStatsAsTree.} asOrderedCollection	
