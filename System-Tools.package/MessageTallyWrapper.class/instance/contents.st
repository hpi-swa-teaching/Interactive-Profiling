accessing
contents

	^ self item receivers collect: [ :each | 
		MessageTallyWrapper with: each model: self model parent: self]
