*51Deprecated-Tools
balloonTextForClassAndMethodString
	"Answer suitable balloon text for the receiver thought of as an encoding of the form
		<className>  [ class ] <selector>"

	| aComment |
	self deprecated: 'Balloon texts for tools are defined in their respective model classes. For example, see Browser >> #messageHelpAt:'. 
	
	Preferences balloonHelpInMessageLists
		ifFalse: [^ nil].
	MessageSet parse: self contents asString toClassAndSelector:
		[:aClass :aSelector |
			(aClass notNil and: [aSelector notNil]) ifTrue:
				[aComment := aClass precodeCommentOrInheritedCommentFor: aSelector]].
	^ aComment
