as yet unclassified
testProfileBlockStart

	| extrasBarItem profileBlockButton |
	
	extrasBarItem := self subject findByLabel: 'Extras'.
	extrasBarItem click.
	
	profileBlockButton := self subject findByLabel: 'Profile Block'.
	profileBlockButton click.
	
	self assert: FillInTheBlankMorph allInstances notEmpty.