accessing
icon
	"Answer a form to be used as icon"
	^ Preferences visualExplorer
		ifTrue: [([self object iconOrThumbnailOfSize: 12] on: Error do: [nil])
			ifNil: [self class showContentsInColumns
				ifTrue: [self item icon] 
				ifFalse: [nil]]]
		ifFalse: [nil]