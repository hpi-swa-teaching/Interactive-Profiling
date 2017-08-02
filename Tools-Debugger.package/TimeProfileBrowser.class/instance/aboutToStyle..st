message list
aboutToStyle: aPluggableShoutMorphOrView
	"Copied from MessageSet as TimeProfileBrowser doesn't inherit from MessageSet anymore but method is needed."
	
	| isStyleable |
	isStyleable := self currentSelection notNil.
	isStyleable
		ifTrue: [aPluggableShoutMorphOrView classOrMetaClass: self selectedClass].

	^ isStyleable