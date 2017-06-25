*45Deprecated
cleanUpUndoCommands
	
	self deprecated: 'This method was superseded by Command class >> #cleanUp'.
	globals at: #Command ifPresent: [ :command | command cleanUp ]