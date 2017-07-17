as yet unclassified
testProfileBlockStart

	| newSubject beforeDockingBarMenuMorphs extrasBarItem number profileBlockButton |
	
	beforeDockingBarMenuMorphs := DockingBarMenuMorph allInstances.
	
	extrasBarItem := self subject findByCriteria: [:aSubmorph | (aSubmorph isMemberOf: DockingBarItemMorph) and: [aSubmorph contents = 'Extras']].
	extrasBarItem click.
	extrasBarItem waitWith: 30.
	
	newSubject := (DockingBarMenuMorph allInstances difference: beforeDockingBarMenuMorphs) first.
	
	number := FillInTheBlankMorph allInstances size.
	
	profileBlockButton := newSubject findByCriteria: [:aSubmorph | (aSubmorph isMemberOf: MenuItemMorph) and: [aSubmorph contents = 'Profile Block' ]].
	"self halt."
	profileBlockButton click.
	self halt.
	
	Transcript show: number; cr; show: FillInTheBlankMorph allInstances size; cr; cr.

	"self assert: FillInTheBlankMorph allInstances size = (number + 1).
	FillInTheBlankMorph allInstancesDo: [:instance | instance abandon].
	Smalltalk garbageCollect."