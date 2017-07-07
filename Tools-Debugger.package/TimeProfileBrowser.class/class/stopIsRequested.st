instance creation
stopIsRequested

	^ stopIsRequested isNil 
		ifTrue: [false] 
		ifFalse: [stopIsRequested]