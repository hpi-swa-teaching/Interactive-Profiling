instance creation
prepareProfileBlock

	| proposedBlockString usersBlockString |
	
	self lastSpyedOnBlock
		ifNil: [proposedBlockString := self defaultProposedBlockString] 
		ifNotNil: [proposedBlockString := self lastSpyedOnBlock sourceString].
	usersBlockString := MorphicUIManager
		new request: 'Type in a block that you want to spy on' 
		initialAnswer: proposedBlockString.
	(usersBlockString ~= '' and: [usersBlockString ~= self defaultProposedBlockString]) ifTrue: [
		self profileBlock: (BlockClosure readFromString: usersBlockString)]