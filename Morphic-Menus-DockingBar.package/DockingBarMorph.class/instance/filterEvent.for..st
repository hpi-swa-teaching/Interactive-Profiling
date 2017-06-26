events-processing
filterEvent: aKeyboardEvent for: anObject
	"Provide keyboard shortcuts."
	
	| index itemToSelect os |
	
	aKeyboardEvent controlKeyPressed
		ifFalse: [^ aKeyboardEvent].

	(aKeyboardEvent isKeyDown or: [aKeyboardEvent isKeystroke]) "We also need #keyDown for Windows platforms because CTRL+X does not trigger key strokes there..."
		ifFalse: [^ aKeyboardEvent].
		
	"Search field."
	aKeyboardEvent keyCharacter = $0
		ifTrue: [
			self searchBarMorph ifNotNil: [ :morph |
				morph model activate: aKeyboardEvent in: morph ].
			^ aKeyboardEvent ignore "hit!"].

	os := Smalltalk os platformName.
	
	((os = 'Mac OS' and: aKeyboardEvent keyValue == 37) or: 
	(os = 'Win32' and: aKeyboardEvent keyValue == $L asciiValue) or: 
	(os = 'unix' and: aKeyboardEvent keyValue == 246))
		ifTrue: [TheWorldMainDockingBar instance profileGlobal].
		
	((os = 'Mac OS' and: aKeyboardEvent keyValue == 45) or: 
	((os = 'Win32'  and: aKeyboardEvent keyValue == $N asciiValue)) or: 
	(os = 'unix' and: aKeyboardEvent keyValue == 228))
		ifTrue: [TheWorldMainDockingBar instance profileBlock].
	
	((os = 'Mac OS' and: aKeyboardEvent keyValue == 46) or: 
	((os = 'Win32' and: aKeyboardEvent keyValue == $M asciiValue)) or:
	(os = 'unix' and: aKeyboardEvent keyValue == 252))
		ifTrue: [TheWorldMainDockingBar instance repeatProfileBlock].
		
	"Select menu items."
	(aKeyboardEvent keyValue 
		between: $1 asciiValue 
		and: $9 asciiValue)
			ifFalse: [^ aKeyboardEvent].	
	
	index := aKeyboardEvent keyValue - $1 asciiValue + 1.
	itemToSelect := (self submorphs select: [ :each | 
		each isKindOf: DockingBarItemMorph ]) 
			at: index 
			ifAbsent: [^ aKeyboardEvent].
			
	self activate: aKeyboardEvent.
	self 
		selectItem: itemToSelect
		event: aKeyboardEvent.

	^ aKeyboardEvent ignore "hit!"