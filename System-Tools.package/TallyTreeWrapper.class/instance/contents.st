accessing
contents
	^self object children collect: [ :each | 
		TallyTreeWrapper with: each model: self model parent: self]
