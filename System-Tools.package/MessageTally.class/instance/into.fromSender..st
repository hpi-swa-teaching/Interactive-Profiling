collecting leaves
into: leafDict fromSender: senderTally
	| leafNode |
	leafNode := leafDict
					at: method
					ifAbsentPut:
						[(self class new class: class method: method nesting: blockNesting)
							process: process;
							reportOtherProcesses: reportOtherProcesses].
	leafNode bump: tally fromSender: senderTally