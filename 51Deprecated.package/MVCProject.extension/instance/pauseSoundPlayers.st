*51Deprecated
pauseSoundPlayers
	"Pause sound players, subject to preference settings"

	Smalltalk at: #ScorePlayer ifPresent:[:playerClass| 
		playerClass allSubInstancesDo: [:player | player pause]]