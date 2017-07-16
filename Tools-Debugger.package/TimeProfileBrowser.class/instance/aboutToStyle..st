message list
aboutToStyle: aPluggableShoutMorphOrView
	"This is a notification that aPluggableShoutMorphOrView is about to re-style its text.
	Set the classOrMetaClass in aPluggableShoutMorphOrView, so that identifiers
	will be resolved correctly.
	Answer true to allow styling to proceed, or false to veto the styling"

	
	| isStyleable |
	isStyleable := self currentSelection notNil and: [self currentSelection isMethodNode].
	isStyleable
		ifTrue: [aPluggableShoutMorphOrView classOrMetaClass: self selectedClass].

	^ isStyleable