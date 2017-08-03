toolbuilder
buildMessageTallyTreeWith: aMorphicToolBuilder
	
	| treeSpec |
	
	treeSpec := aMorphicToolBuilder pluggableTreeSpec new.
	^ treeSpec 
		model: self;
		hScrollBarPolicy: #whenNeeded;
		nodeClass: self class messageNodeClass;
		getSelected: #currentSelection;
		setSelected: #currentSelection:;
		setSelectedParent: #currentParent:;
		autoDeselect: true