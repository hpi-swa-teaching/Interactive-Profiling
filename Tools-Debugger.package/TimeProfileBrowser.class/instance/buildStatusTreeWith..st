contents
buildStatusTreeWith: builder
	
	| treeSpec |
	
	treeSpec := builder pluggableTreeSpec new.
	^ treeSpec 
		model: self;
		hScrollBarPolicy: #whenNeeded;
		nodeClass: StatusTreeWrapper;
		roots: #statusRoots;
		autoDeselect: true