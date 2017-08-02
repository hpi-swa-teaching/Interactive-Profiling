*51Deprecated
scrollUp
	self flag: #obsolete.
	upButton eventHandler: nil.
	upButton on: #mouseDown send: #scrollUpInit to: self.
	upButton on: #mouseUp send: #finishedScrolling to: self.
	^self scrollUpInit