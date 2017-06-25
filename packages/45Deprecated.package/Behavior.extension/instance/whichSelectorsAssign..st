*45Deprecated
whichSelectorsAssign: instVarName 
	"Answer a Set of selectors whose methods store into the argument, 
	instVarName, as a named instance variable."
	
	self deprecated: 'Use #whichSelectorsStoreInto:.'.
	^self whichSelectorsStoreInto: instVarName