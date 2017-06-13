menu actions
startTimeProfileBrowser

	| usersBlock |

	usersBlock := MorphicUIManager new request: 'Type in a block that you want to spy on' initialAnswer: '[<block code>]'.
	usersBlock ~= '' ifTrue: 
		[TimeProfileBrowser spyOn: (BlockClosure readFromString: usersBlock)]