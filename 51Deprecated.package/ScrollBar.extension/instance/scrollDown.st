*51Deprecated
scrollDown
	self flag: #obsolete.
	downButton eventHandler: nil.
	downButton on: #mouseDown send: #scrollDownInit to: self.
	downButton on: #mouseUp send: #finishedScrolling to: self.
	^self scrollDownInit