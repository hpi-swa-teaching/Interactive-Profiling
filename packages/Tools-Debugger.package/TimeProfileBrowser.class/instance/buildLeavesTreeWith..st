toolbuilder
buildLeavesTreeWith: aMorphicToolBuilder
	
	| treeSpec |
	
	treeSpec := self buildMessageTallyTreeWith: aMorphicToolBuilder.
	treeSpec roots: #leavesRoots.
	^ treeSpec