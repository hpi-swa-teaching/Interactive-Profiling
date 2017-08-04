toolbuilder
buildWindowWith: builder

	| windowSpec |
	
	windowSpec := builder pluggableWindowSpec new.
	windowSpec model: self.
	windowSpec children: OrderedCollection new.
	^windowSpec