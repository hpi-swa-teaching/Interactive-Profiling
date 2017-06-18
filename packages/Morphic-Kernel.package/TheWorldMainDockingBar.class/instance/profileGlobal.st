menu actions
profileGlobal

	(self confirm: 'TimeProfileBrowser will start now,
and stop when the cursor goes
to the top of the screen') ifTrue:
		[TimeProfileBrowser spyOn:
			[[Sensor peekPosition y > 0] whileTrue: [World doOneCycle]]]