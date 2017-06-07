as yet unclassified
messageListIndex: anInteger 
	"Set the index of the selected item to be anInteger."
	messageListIndex := 1.
	contents := self selectedMessage.
	self changed: #messageListIndex.	 "update my selection"
	self editSelection: #editMessage.
	self contentsChanged.
	(autoSelectString notNil and: [ self contents notEmpty ]) ifTrue: [ self changed: #autoSelect ].
	self decorateButtons