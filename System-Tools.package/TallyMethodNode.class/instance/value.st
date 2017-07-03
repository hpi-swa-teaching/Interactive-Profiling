as yet unclassified
value

	^ '', (self percentage printShowingDecimalPlaces: 1), '% {', (self percentage * self rootTime / 100) rounded, ' ms} ', self blockNesting, ' ', self itemClass, ' >> ' ,self itemSelector.