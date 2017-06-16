events-processing
filterEvent: aKeyboardEvent for: anObject
	"Provide keyboard shortcuts."
	
	| index itemToSelect |
	
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

	"37 is Mac-equivalent to $L asciiValue"
	(aKeyboardEvent keyValue == $L asciiValue or: aKeyboardEvent keyValue == 37)
		ifTrue: [TheWorldMainDockingBar instance profileGlobal].
		
	"45 is Mac-equivalent to $N asciiValue"	
	(aKeyboardEvent keyValue == $N asciiValue or: aKeyboardEvent keyValue == 45)
		ifTrue: [TheWorldMainDockingBar instance profileBlock].
	
	"46 is Mac-equivalent to $M asciiValue"	
	(aKeyboardEvent keyValue == $M asciiValue or: aKeyboardEvent keyValue == 46)
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