*51Deprecated
interruptName: labelString
	"Create a Notifier on the active scheduling process with the given label."

	self flag: #toRemove. "after restarting the user interrupt watcher process"
	^ self current interruptName: labelString
