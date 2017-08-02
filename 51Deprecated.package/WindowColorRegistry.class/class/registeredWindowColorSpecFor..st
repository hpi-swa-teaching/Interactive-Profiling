registry
registeredWindowColorSpecFor: aClassName
	"Return the Window Color Spec for the given class. "
	^self registry at: aClassName asSymbol ifAbsent: [].
