class analysis
computeSpaceUsage

	results
		do: [ :entry |
			| class instanceSpaceAndCount |
			class := self class environment at: entry analyzedClassName.
			Smalltalk garbageCollectMost.
			instanceSpaceAndCount := self spaceForInstancesOf: class.
			entry 
				codeSize: class spaceUsed;
				instanceCount: instanceSpaceAndCount second;
				spaceForInstances: instanceSpaceAndCount first ]
		displayingProgress: 'Taking statistics...'