accessing
contents

	(self object respondsTo: #explorerContents) ifTrue: [
		^ self object explorerContents
			do: [:wrapper | wrapper parent: self];
			yourself].
	"For all others, show named vars first, then indexed vars"
	^(self object class allInstVarNames asOrderedCollection withIndexCollect: [:each :index |
		self class
			with: (self object instVarAt: index)
			name: each
			model: self object
			parent: self]) ,
	((1 to: self object basicSize) collect: [:index |
		self class
			with: (self object basicAt: index)
			name: index printString
			model: self object
			parent: self])