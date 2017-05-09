fileOut
printSpaceAnalysis: threshold on: fileName
	"SpaceTally new printSpaceAnalysis: 1000 on: 'STspace.text1'"

	"sd-This method should be rewrote to be more coherent within the rest of the class 
	ie using preAllocate and spaceForInstanceOf:"

	"If threshold > 0, then only those classes with more than that number
	of instances will be shown, and they will be sorted by total instance space.
	If threshold = 0, then all classes will appear, sorted by name."

	FileStream newFileNamed: fileName do: [ :file |
		self printSpaceAnalysis: threshold onStream: file ]