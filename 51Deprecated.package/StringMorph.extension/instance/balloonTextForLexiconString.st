*51Deprecated-Tools
balloonTextForLexiconString
	"Answer suitable balloon text for the receiver thought of as an encoding (used in Lexicons) of the form
		<selector> <spaces> (<className>>)"

	| aComment contentsString aSelector aClassName |
	self deprecated: 'Balloon texts for tools are defined in their respective model classes. For example, see Browser >> #messageHelpAt:'. 

	Preferences balloonHelpInMessageLists
		ifFalse: [^ nil].
	contentsString := self contents asString.
	aSelector := contentsString upTo: $ .
	aClassName := contentsString copyFrom: ((contentsString indexOf: $() + 1) to: ((contentsString indexOf: $)) - 1).
	MessageSet parse: (aClassName, ' dummy') toClassAndSelector:
		[:cl :sel | cl ifNotNil:
			[aComment := cl precodeCommentOrInheritedCommentFor: aSelector]].
	^ aComment
