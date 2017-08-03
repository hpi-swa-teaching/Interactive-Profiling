accessing
icon
	
	^ Preferences visualExplorer
		ifTrue: [self tallyIcon] 
		ifFalse: [nil]