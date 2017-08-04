spying
incrementalGcHelpText

	^ 'Under the assumption that objects that have been in memory for a while are still relevant now, an incremental GC only scans the young space for objects that can be deleted. If during an incremental GC an object is found to still be referenced, it is not deleted but instead moved into old space.'