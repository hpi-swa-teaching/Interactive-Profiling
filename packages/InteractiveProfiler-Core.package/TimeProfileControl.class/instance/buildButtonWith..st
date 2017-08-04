toolbuilder
buildButtonWith: aMorphicToolBuilder

	| buttonSpec |

	buttonSpec := aMorphicToolBuilder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: 'Stop' translated;
		action: #requestStop.
	^ buttonSpec