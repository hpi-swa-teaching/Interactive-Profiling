initialization
classSymbol: sym wording: wrd brightColor: brCol pastelColor: paCol helpMessage: hlpMsg
	"Initialize the receiver's instance variables"

	self
		classSymbol: sym
		wording: wrd
		brightColor: brCol
		pastelColor: paCol
		normalColor: (Color colorFrom: brCol) duller
		helpMessage: hlpMsg