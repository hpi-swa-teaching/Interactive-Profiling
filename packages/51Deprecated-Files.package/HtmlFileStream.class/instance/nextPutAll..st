read, write, position
nextPutAll: aString
	"Write the whole string, translating as we go. 4/6/96 tk"
	"Slow, but faster than using aString asHtml?"

	^aString do: [:each | self nextPut: each].