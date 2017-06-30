spying
fullGcHelpText

	^ 'During a full GC, both young and old space will be scanned for objects that are without reference and can be deleted. This process is a lot more expensive than an incremental GC. If a full GC repeatedly runs during execution of your program, this indicates that your code might be too heavy on memory resources.'