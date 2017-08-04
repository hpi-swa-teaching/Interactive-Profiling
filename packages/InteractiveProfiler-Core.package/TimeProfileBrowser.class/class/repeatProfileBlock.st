instance creation
repeatProfileBlock

	| instance result |
	
	TimeProfileBrowser existsLastSpyedOnBlock
		ifTrue: [ 
			instance := self new.
			result := instance runBlock: self lastSpyedOnBlock compareWith: self lastSpyedOnTime.
			self open: instance name: 'Time Profile'.
			TimeProfileBrowser lastSpyedOnTime: result]