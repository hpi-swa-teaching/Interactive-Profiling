*InteractiveProfiler-Core
osDependentKeyPressed: aKeyboardEvent keyValues: anOrderedCollection

	| os |

	os := Smalltalk os platformName.
	
	^
		(os = 'Mac OS' and: [aKeyboardEvent keyValue == anOrderedCollection first]) or: 
		[os = 'Win32' and: [aKeyboardEvent keyValue == anOrderedCollection second asciiValue]] or: 
		[os = 'unix' and: [aKeyboardEvent keyValue == anOrderedCollection third]]