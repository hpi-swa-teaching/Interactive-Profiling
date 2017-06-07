private
methodReferenceFrom: aTallyNode
	"Try to create a MethodReference from a line returned by MessageTally. Return nil if the string doesn't have the given format."

	^MethodReference
		class: ((aTallyNode itemClass) ifNil: [ ^nil ])
		selector: ((Symbol lookup: aTallyNode itemSelector ) ifNil: [ ^nil ])