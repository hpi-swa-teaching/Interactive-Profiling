initialization
on: aTransferMorph

	self flag: #bob.		"there was a reference to World, but the class seems to be unused"

	self color: Color transparent.
	transferMorph := aTransferMorph.
	transferMorph addDependent: self.
	ActiveWorld addMorph: self	"or perhaps aTransferMorph world"