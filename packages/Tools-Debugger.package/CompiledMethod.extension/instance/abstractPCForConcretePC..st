*Tools-Debugger-support
abstractPCForConcretePC: concretePC
	"Answer the abstractPC matching concretePC."

	| abstractPC scanner client endPC |
	self flag: 'belongs in DebuggerMethodMap?'.
	abstractPC := 1.
	scanner := InstructionStream on: self.
	client := InstructionClient new.
	"cache endPC for methods with embedded source; finding out the endPC is very slow in this case..."
	endPC := self endPC.
	[(scanner pc > endPC
	  or: [scanner pc >= concretePC]) ifTrue:
		[^abstractPC].
	 abstractPC := abstractPC + 1.
	 scanner interpretNextInstructionFor: client] repeat