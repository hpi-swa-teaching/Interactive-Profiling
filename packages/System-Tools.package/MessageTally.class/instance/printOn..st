printing
printOn: aStream 
	| className |
	(class isNil or: [method isNil]) ifTrue: [^super printOn: aStream].
	className := method methodClass name contractTo: self maxClassNameSize.
	blockNesting ifNotNil:
		[blockNesting timesRepeat:
			[aStream nextPutAll: '[] in ']].
	aStream
		nextPutAll: className;
		nextPutAll: ' >> ';
		nextPutAll: (method selector contractTo: self maxClassPlusSelectorSize - className size)