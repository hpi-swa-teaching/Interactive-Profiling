accessing
contents

	^ self item children collect: [ :each | 
		TallyTreeWrapper with: each model: self model parent: self]
