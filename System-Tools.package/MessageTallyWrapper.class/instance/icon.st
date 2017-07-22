accessing
icon
	"Answer a form to be used as icon"
	
	^ Preferences visualExplorer
		ifTrue: [^ ToolIcons testRed adjustSaturation: (-0.5 + self fraction)] 
		ifFalse: [nil]