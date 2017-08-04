*InteractiveProfiler-Core-override
activate: anEvent
	"Receiver should be activated; e.g., so that control passes  
	correctly."
	
	oldKeyboardFocus := anEvent hand keyboardFocus.
	self oldMouseFocus: anEvent hand mouseFocus.
	anEvent hand 
		newKeyboardFocus: self;
		newMouseFocus: self.
	self ensureSelectedItem: anEvent