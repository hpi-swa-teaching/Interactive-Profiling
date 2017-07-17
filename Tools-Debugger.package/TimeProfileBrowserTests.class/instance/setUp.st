as yet unclassified
setUp

	"self wantsToTest: World mainDockingBars first."
	self wantsToTest: TheWorldMainDockingBar new createDockingBar.
	self slowTestBy: 10.