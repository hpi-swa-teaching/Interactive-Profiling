*51Deprecated-character writing
nextPutKeyword: keyword withArg: argValue
	"Emit a keyword/value pair in the alternate syntax"
	self deprecated.
	self nextPutAll: (keyword copyWithout: $:);
		nextPut: $(;
		store: argValue;
		nextPut: $)