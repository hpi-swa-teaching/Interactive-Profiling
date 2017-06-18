accessing
tempNamesForMethod: aMethod
	"Answer an Array of all the temp names in scope in aMethod starting with
	 the home's first local (the first argument or first temporary if no arguments)."
	^(self
		privateTempRefsForMethod: aMethod
		startpcsToBlockExtents: aMethod startpcsToBlockExtents) collect:
			[:pair| pair first]