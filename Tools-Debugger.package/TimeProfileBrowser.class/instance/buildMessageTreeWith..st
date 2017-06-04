as yet unclassified
buildMessageTreeWith: builder
	| treeSpec |
	treeSpec := builder pluggableTreeSpec new.
	treeSpec 
		model: self tallyTree;
		nodeClass: self class nodeClass;
		roots: #children;
		keyPress: #explorerKey:from:event:;
		getSelected: #currentSelection;
		setSelected: #currentSelection:;
		setSelectedParent: #currentParent:;
		menu: #genericMenu:;
		autoDeselect: false;
		columns: (self class nodeClass showContentsInColumns
			ifTrue: [{
				[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 1]) max].
				nil }]).	
	^treeSpec