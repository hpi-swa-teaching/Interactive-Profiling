read, write, position
nextPut: char
	"Put a character on the file, but translate it first. 4/6/96 tk 1/1/98 acg"
	char = $< ifTrue: [^ super nextPutAll: '&lt;'].
	char = $> ifTrue: [^ super nextPutAll: '&gt;'].
	char = $& ifTrue: [^ super nextPutAll: '&amp;'].
	char asciiValue = 13 "return" 
		ifTrue: [self command: 'br'].
	char = $	"tab" 
		ifTrue: [self verbatim: TabThing. ^super nextPut: char].
	^ super nextPut: char