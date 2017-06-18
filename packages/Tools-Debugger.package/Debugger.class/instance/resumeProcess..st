private
resumeProcess: aTopView

	^ Project current
		dispatchTo: self
		addPrefixAndSend: #ResumeProcess:
		withArguments: { aTopView }
