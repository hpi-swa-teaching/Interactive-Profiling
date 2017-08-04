toolbuilder
buildStatusTreeWith: aMorphicToolBuilder
	
	| treeSpec |
	
	treeSpec := aMorphicToolBuilder pluggableTreeSpec new.
	^ treeSpec 
		model: self;
		hScrollBarPolicy: #whenNeeded;
		nodeClass: self class statusNodeClass;
		roots: #statusRoots;
		autoDeselect: true