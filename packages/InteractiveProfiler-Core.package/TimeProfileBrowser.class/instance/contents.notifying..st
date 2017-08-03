message list
contents: aString notifying: aController 
	"Copied from MessageSet as TimeProfileBrowser doesn't inherit from MessageSet anymore but method is needed."

	| category selector class oldSelector |
	self okayToAccept ifFalse: [^ false].
	self setClassAndSelectorIn: [:c :os | class := c.  oldSelector := os].
	class ifNil: [^ false].
	(oldSelector ~~ nil and: [oldSelector first isUppercase]) ifTrue:
		[oldSelector = #Comment ifTrue:
			[class comment: aString stamp: Utilities changeStamp.
			self changed: #annotation.
 			self clearUserEditFlag.
			^ false].
		oldSelector = #Definition ifTrue:
			["self defineClass: aString notifying: aController."
			class subclassDefinerClass
				evaluate: aString
				notifying: aController
				logged: true.
			self clearUserEditFlag.
 			^ false].
		oldSelector = #Hierarchy ifTrue:
			[self inform: 'To change the hierarchy, edit the class definitions'. 
			^ false]].
	"Normal method accept"
	category := class organization categoryOfElement: oldSelector.
	selector := class compile: aString
				classified: category
				notifying: aController.
	selector == nil ifTrue: [^ false].
	self noteAcceptanceOfCodeFor: selector.
	selector == oldSelector ifFalse:
		[self reformulateListNoting: selector].
	contents := aString copy.
	self changed: #annotation.
	^ true