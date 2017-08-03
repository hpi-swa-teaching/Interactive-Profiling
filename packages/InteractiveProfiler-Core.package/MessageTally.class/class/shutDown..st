system startup
shutDown: quitting
	"This message is sent on system shutdown to registered classes"
	self runningInstance ifNotNil: [:runningInstance| runningInstance hibernate]