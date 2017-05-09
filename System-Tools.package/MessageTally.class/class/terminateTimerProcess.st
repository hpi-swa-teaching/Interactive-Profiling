as yet unclassified
terminateTimerProcess

	Timer ifNotNil: [
		Timer terminate.
		Timer := nil ].
