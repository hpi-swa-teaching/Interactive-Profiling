*System-Tools-profiling
profileAll
	"Profile reading all the glyphs"
	MessageTally spyOn:[
		1 to: numGlyphs do:[:glyphIndex| self readGlyphAt: glyphIndex-1].
	].