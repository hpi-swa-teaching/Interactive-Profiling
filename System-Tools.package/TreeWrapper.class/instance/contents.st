accessing
contents

	^ self itemChildren collect: [:each | 
		self class with: each model: self model parent: self]
