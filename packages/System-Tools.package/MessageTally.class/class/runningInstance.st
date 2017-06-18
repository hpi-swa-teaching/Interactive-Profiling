system startup
runningInstance
	"Answer the running instance if the Timer is running."
	^Timer ifNotNil:
		[((Processor activeProcess == Timer
			ifTrue: [thisContext]
			ifFalse: [Timer suspendedContext]) findContextSuchThat:
				[:ctxt| ctxt receiver isKindOf: self]) ifNotNil:
					[:ctxt| ctxt receiver]]