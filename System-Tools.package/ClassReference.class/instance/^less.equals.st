comparisons
<= anotherMethodOrClassReference

	classSymbol < anotherMethodOrClassReference classSymbol ifTrue: [^true].
	classSymbol > anotherMethodOrClassReference classSymbol ifTrue: [^false].
	classIsMeta = anotherMethodOrClassReference classIsMeta ifFalse: [^classIsMeta not].
	"i.e. if anotherMethodOrClassReference is a MethodReference then we're < it, and so <= to it"
	^true