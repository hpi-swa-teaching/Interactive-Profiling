accessing
hasContents

	"self object 
		ifNil: [^ false] 
		ifNotNil: [^ self object children notEmpty]."
		
	^ self item children notEmpty