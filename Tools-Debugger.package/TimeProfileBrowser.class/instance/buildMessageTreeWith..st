as yet unclassified
buildMessageTreeWith: builder
	| treeSpec |
	treeSpec := builder pluggableTreeSpec new.
	self root: self tallyTree.
	treeSpec 
		model: self;
		hScrollBarPolicy: #whenNeeded;
		nodeClass: self class nodeClass;
		roots: #getList;
		getSelected: #currentSelection;
		setSelected: #currentSelection:;
		setSelectedParent: #currentParent:;
		menu: #genericMenu:;
		autoDeselect: true;
		columns: (self class nodeClass showContentsInColumns
			ifTrue: [{
				[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 1]) max].
				nil }]).
			
	^ treeSpec