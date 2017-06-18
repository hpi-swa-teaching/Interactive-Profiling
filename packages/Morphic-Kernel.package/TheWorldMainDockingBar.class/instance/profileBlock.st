menu actions
profileBlock

	| proposedBlock usersBlock |
	
	proposedBlock := TimeProfileBrowser lastSpyedOnBlock.
	proposedBlock ifNil: [proposedBlock := '[<block code>]'].
	
	usersBlock := MorphicUIManager
		new request: 'Type in a block that you want to spy on' 
		initialAnswer: proposedBlock.
	usersBlock ~= '' ifTrue: [
		TimeProfileBrowser lastSpyedOnBlock: usersBlock.
		TimeProfileBrowser spyOn: (BlockClosure readFromString: usersBlock).]