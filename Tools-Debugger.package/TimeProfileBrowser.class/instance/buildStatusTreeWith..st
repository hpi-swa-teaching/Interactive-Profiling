contents
buildStatusTreeWith: builder
	
	| treeSpec |
	
	treeSpec := builder pluggableTreeSpec new.
	^ treeSpec 
		model: self;
		hScrollBarPolicy: #whenNeeded;
		nodeClass: self class statusNodeClass;
		roots: #statusRoots;
		autoDeselect: true