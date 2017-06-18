meta-actions
blueButtonDown: anEvent 
	"Special gestures (cmd-mouse on the Macintosh; Alt-mouse on  
	Windows and Unix) allow a mouse-sensitive morph to be  
	moved or bring up a halo for the morph."
	"In NoviceMode we don't want halos"
	
	Preferences noviceMode 
	ifFalse: [super blueButtonDown: anEvent]
	