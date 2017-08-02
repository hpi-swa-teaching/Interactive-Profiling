*51Deprecated
pauseSoundPlayers
	"Pause sound players, subject to preference settings"
	
	self deprecated: 'mt: See implementors of #finalExitActions:.'.
	
	(world hasProperty: #letTheMusicPlay)
		ifTrue: [world removeProperty: #letTheMusicPlay]
		ifFalse: [Smalltalk
				at: #ScorePlayer
				ifPresent: [:playerClass | playerClass
						allSubInstancesDo: [:player | player pause]]]
