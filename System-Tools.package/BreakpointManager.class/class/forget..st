install-uninstall
forget: breakMethod
	"Answer the original unbreakpointed method, removing the original from the BreakpointManager's collection.
	 Use with care!!"
	^self installed removeKey: breakMethod ifAbsent: []