access
upTo: aCharacter
	| newStream char |
	newStream := WriteStream on: (String new: 100).
	[(char := self next) isNil or: [char == aCharacter]]
		whileFalse: [newStream nextPut: char].
	^ newStream contents
