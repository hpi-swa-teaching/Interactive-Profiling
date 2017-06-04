converting
asString
	| label |
	
	label := self itemName ifNil: [''].
	^ '{1}' format: {label}