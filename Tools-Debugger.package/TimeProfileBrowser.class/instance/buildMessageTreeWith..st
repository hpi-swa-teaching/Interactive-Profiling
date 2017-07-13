as yet unclassified
buildMessageTreeWith: builder
	| treeSpec |
	treeSpec := builder pluggableTreeSpec new.
	treeSpec 
		model: self;
		hScrollBarPolicy: #whenNeeded;
		nodeClass: self class nodeClass;
		roots: #getRoots;
		"keyPress: #messageListKey:from:;" "CMD+D means rerunning, but doesnt work yet"
		getSelected: #currentSelection;
		setSelected: #currentSelection:;
		setSelectedParent: #currentParent:;
		autoDeselect: true.
			
	^ treeSpec