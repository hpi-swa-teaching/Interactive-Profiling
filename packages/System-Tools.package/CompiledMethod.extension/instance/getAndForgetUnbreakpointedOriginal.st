*System-Tools-debugger support
getAndForgetUnbreakpointedOriginal
	"Answer the original unbreakpointed method, removing the original from the BreakpointManager's collection.
	 Use with care!!"
	self assert: self hasBreakpoint.
	^BreakpointManager forget: self