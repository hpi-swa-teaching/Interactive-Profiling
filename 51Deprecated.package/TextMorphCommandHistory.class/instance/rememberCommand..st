command exec
rememberCommand: aCommand
	"Make the supplied command be the 'LastCommand', and mark it 'done'"

	"Before adding the new command, remove any commands after the last #done 
	command, and make that last #done command be lastCommand."
	self removeUndoneCommands.
	aCommand phase: #done.
		
	"If we are building a compound command, just add the new command to that"
	history addLast: aCommand.
	lastCommand := aCommand.
"Debug dShow: ('Remember: ', commandToUse asString)."

