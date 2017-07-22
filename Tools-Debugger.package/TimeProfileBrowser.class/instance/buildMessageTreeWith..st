as yet unclassified
buildMessageTreeWith: builder
	
	| treeSpec |
	
	treeSpec := builder pluggableTreeSpec new.
	^ treeSpec 
		model: self;
		hScrollBarPolicy: #whenNeeded;
		nodeClass: self class messageNodeClass;
		roots: #getRoots;
		getSelected: #currentSelection;
		setSelected: #currentSelection:;
		setSelectedParent: #currentParent:;
		autoDeselect: true