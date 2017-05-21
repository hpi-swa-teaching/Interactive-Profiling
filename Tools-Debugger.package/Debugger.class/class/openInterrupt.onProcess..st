opening
openInterrupt: aString onProcess: interruptedProcess
	"Open a notifier in response to an interrupt. An interrupt occurs when the user types the interrupt key (cmd-. on Macs, ctrl-c or alt-. on other systems) or when the low-space watcher detects that memory is low."

	^ Project current
		dispatchTo: self
		addPrefixAndSend: #OpenInterrupt:onProcess:
		withArguments: { aString . interruptedProcess }