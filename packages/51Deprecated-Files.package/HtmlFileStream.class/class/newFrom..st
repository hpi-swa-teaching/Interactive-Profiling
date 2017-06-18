instance creation
newFrom: aFileStream
	"Answer an HtmlFileStream that is 'like' aFileStream.  As a side-effect, the surviving fileStream answered by this method replaces aFileStream on the finalization registry. 1/6/99 acg"

	|inst|
	inst := super newFrom: aFileStream.
	StandardFileStream unregister: aFileStream.
	HtmlFileStream register: inst.
	inst detectLineEndConvention.
	^inst
