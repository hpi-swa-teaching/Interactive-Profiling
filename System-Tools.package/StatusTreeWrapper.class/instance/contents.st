accessing
contents

	^ self item children collect: [ :each | 
		StatusTreeWrapper with: each model: self model parent: self]
