fileOut
saveTo: aFileName
	"| st |
	st := SpaceTally new.
	st spaceTally: (Array with: TextMorph with: Point).
	st saveTo: 'spaceTally2'"
	| s |
	(FileDirectory default fileExists: aFileName) ifTrue: [
		FileDirectory default deleteFileNamed: aFileName].
	s := FileDirectory default fileNamed: aFileName.
	results do: [:each | s nextPutAll: each analyzedClassName asString ; 
						nextPutAll: ' '; nextPutAll: each codeSize printString; 
						nextPutAll: ' '; nextPutAll: each instanceCount printString; 
						nextPutAll: ' '; nextPutAll: each spaceForInstances printString; cr].
	s close