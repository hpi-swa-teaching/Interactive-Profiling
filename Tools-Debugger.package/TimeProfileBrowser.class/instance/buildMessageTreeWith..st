as yet unclassified
buildMessageTreeWith: builder
	| treeSpec |
	treeSpec := builder pluggableTreeSpec new.
	self rootObject: self tallyTree.
	treeSpec 
		model: self;
		nodeClass: self class nodeClass;
		roots: #getList;
		keyPress: #explorerKey:from:event:;
		getSelected: #currentSelection;
		setSelected: #currentSelection:;
		setSelectedParent: #currentParent:;
		menu: #genericMenu:;
		autoDeselect: false";
		columns: (ObjectExplorerWrapper showContentsInColumns
			ifTrue: [{
				[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 1]) max].
				nil }]);
		frame: (0@0 corner: 1@0.71)".
		
"	SystemBrowser browseWithDragNDrop 
		ifTrue:[treeSpec dragItem: #dragFromMessageList:]."
		
	^treeSpec