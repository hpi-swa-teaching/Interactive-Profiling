monticello
mczInstall: urlOrFile

	self log: ('Loading ', urlOrFile, ' ...').

	(urlOrFile beginsWith: 'http:')
		ifTrue: [  MczInstaller installStream: (HTTPSocket httpGet: urlOrFile) ]
		ifFalse: [ MczInstaller installFileNamed: urlOrFile ].
		
	self logCR: ' Loaded'.

	

