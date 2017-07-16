accessing
icon
	"Answer a form to be used as icon"
	^ Preferences visualExplorer
		ifTrue: [self item icon] 
		ifFalse: [nil]