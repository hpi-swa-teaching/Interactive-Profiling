accessing
info

	self sm ifTrue: [ ^ self smInfo  ].
	self wsm ifNotNil: [ ^ self wsmInfo  ].