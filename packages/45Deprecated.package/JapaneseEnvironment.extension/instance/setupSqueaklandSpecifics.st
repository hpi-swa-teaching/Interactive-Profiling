*45Deprecated-utilities
setupSqueaklandSpecifics
	| server |
	ChangeSet current name: 'Unnamed' translated , '1'.
	ServerDirectory resetServers.
	server := SuperSwikiServer new type: #http;
				 server: 'squeakland.jp';
				 directory: '/super/SuperSwikiProj';
				 acceptsUploads: (Preferences eToyFriendly not);
				 encodingName: 'shift_jis'.
	ServerDirectory servers at: 'Squeakland.JP' put: server.
	Smalltalk garbageCollect