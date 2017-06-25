mantis
createRBforBug: aBugNo 
	| aStream  fileList selFile aFileName suffix |

	self setBug: aBugNo.
fileList := self maFiles keys asOrderedCollection.
fileList  addLast: 'none'.
(Smalltalk classNamed: #ReleaseBuilderFor3dot10) clear.
[selFile := UIManager default chooseFrom: fileList title: 'Choose what files load '.
selFile = fileList size ifFalse:[
aFileName := fileList at: selFile.
	self logCR: 'obtaining ', aFileName, '...'.

	aStream := self maStreamForFile: aFileName .suffix := (FileDirectory extensionFor: aFileName) asLowercase.
	
	suffix caseOf:
	{
['gz'] -> [self installGZ: aFileName from: aStream ].
['cs' ] -> [self installCS: aFileName from: aStream].
['st' ] -> [self installCS: aFileName from: aStream].
['mcz' ] -> [self installMCZ: aFileName from: aStream ].
['sar'] -> [self installSAR: aFileName from: aStream ].
}otherwise: [Error].
].selFile = fileList size]whileFalse.
	
	
	
	(Smalltalk classNamed: #ReleaseBuilderFor3dot10) current newUpdateFor: aBugNo
	
	
	