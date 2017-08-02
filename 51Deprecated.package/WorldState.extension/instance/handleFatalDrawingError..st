*51Deprecated-Morphic
handleFatalDrawingError: errMsg
	"Handle a fatal drawing error."
	self flag: #toRemove. "Implementation moved to Project, but are there external packages with senders?"
	Project current handleFatalDrawingError: errMsg
