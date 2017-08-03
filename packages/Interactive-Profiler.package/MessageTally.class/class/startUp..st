system startup
startUp: resuming
	"This message is sent to registered classes when the system is coming up."
	self runningInstance ifNotNil: [:runningInstance| runningInstance unhibernate: resuming]