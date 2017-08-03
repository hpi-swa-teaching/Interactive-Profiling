toolbuilder
buildCallTreeWith: aMorphicToolBuilder
	
	| treeSpec |
	
	treeSpec := self buildMessageTallyTreeWith: aMorphicToolBuilder.
	treeSpec roots: #callsRoots.
	^ treeSpec