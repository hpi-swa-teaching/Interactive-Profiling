instance creation
profileBlock: aBlock

	self lastSpyedOnBlock: aBlock.
	self lastSpyedOnTime: (self spyOn: aBlock).