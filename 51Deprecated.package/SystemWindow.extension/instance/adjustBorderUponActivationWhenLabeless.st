*51Deprecated
adjustBorderUponActivationWhenLabeless
	"Adjust the border upon, um, activation when, um, labelless"

	| aWidth |
	self deprecated: 'See #beKeyWindow'.
	(aWidth := self valueOfProperty: #borderWidthWhenActive) ifNotNil:
		[self acquireBorderWidth: aWidth]