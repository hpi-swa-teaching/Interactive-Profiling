as yet unclassified
buildButtonWith: builder
	| buttonSpec |
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: 'Stop';
		action: [self isStopRequested: true].
			
	^ buttonSpec