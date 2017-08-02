command exec
removeUndoneCommands
"Remove all of the commands at the end of history until the first one that is not marked #undone"

	history reversed do: [ :command |
		(command phase == #done) ifTrue:[
			lastCommand := command.
			^self
		]ifFalse:[
			history remove: command.
		].
	].
	
	"If there were no #done commands on the stack, then get rid of lastCommand"
	lastCommand := nil.
