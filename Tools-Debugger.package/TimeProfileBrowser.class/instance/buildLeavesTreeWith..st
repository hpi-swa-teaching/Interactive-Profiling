contents
buildLeavesTreeWith: builder
	
	| treeSpec |
	
	treeSpec := builder pluggableTreeSpec new.
	^ treeSpec 
		model: self;
		hScrollBarPolicy: #whenNeeded;
		nodeClass: self class messageNodeClass;
		roots: #leavesRoots;
		getSelected: #currentSelection;
		setSelected: #currentSelection:;
		setSelectedParent: #currentParent:;
		autoDeselect: true